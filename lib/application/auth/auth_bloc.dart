import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:blood_365/domain/core/failure.dart';
import 'package:blood_365/domain/request_blood/i_request_provider.dart';

import 'package:blood_365/domain/user/user_profile.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:geolocator/geolocator.dart';

import 'package:meta/meta.dart';
import 'package:blood_365/domain/auth/i_auth_provider.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthProvider authProvider;
  final IRequestProvider requestProvider;

  AuthBloc(this.authProvider, this.requestProvider)
      : super(AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final userOption = await authProvider.getSignedInUser();
        yield userOption.fold(
          () => state.copyWith(isAuthenticated: false),
          (user) => state.copyWith(isAuthenticated: true, userData: user),
        );
      },
      signedOut: (e) async* {
        await authProvider.signOut();
        yield state.copyWith(isAuthenticated: false);
      },
      login: (LoginEvent value) async* {
        yield state.copyWith(isLoading: true);
        final Either<Failure, UserData> failureOrSuccess =
            await authProvider.signInWithEmailAndPassword(
          value.login,
          value.password,
        );
        yield failureOrSuccess.fold(
            (l) => state.copyWith(
                isAuthenticated: false, error: l.toString(), isLoading: false),
            (r) => state.copyWith(
                isAuthenticated: true, userData: r, isLoading: false));
      },
      getUserLocation: (GetUserLocation value) async* {
        final Either<Failure, Position> currentLocation =
            await requestProvider.getCurrentPosition();

        yield currentLocation.fold(
          (l) => state.copyWith(error: l.error),
          (r) {
            print("map longi ${r.longitude}");
            return state.copyWith(lat: r.latitude, long: r.longitude);
          },
        );
      },
      signUp: (SignupEvent value) async* {
        yield state.copyWith(isLoading: true);
        // final GeoFirePoint myLocation =
        //     Geoflutterfire().point(latitude: state.lat, longitude: state.long);
        final Either<Failure, Unit> failureOrSuccess = await authProvider
            .signUp(value.email, value.password, value.userData);
        yield failureOrSuccess.fold(
            (l) => state.copyWith(isAuthenticated: false, error: l.toString()),
            (r) => state);

        final Either<Failure, UserData> userResponse =
            await authProvider.getUserProfile();
        yield userResponse.fold(
            (l) => state.copyWith(
                isAuthenticated: false, error: l.toString(), isLoading: false),
            (r) => state.copyWith(
                isAuthenticated: true, userData: r, isLoading: false));
      },
      resetPassword: (ResetPassword value) async* {
        yield state.copyWith(isLoading: true);
        final Either<Failure, Unit> resetResponse =
            await authProvider.forgetPassword(value.email);

        yield resetResponse.fold(
            (l) => state.copyWith(error: l.error, isLoading: false),
            (r) => state.copyWith(resetLink: true, isLoading: false));
      },
      resetState: (ResetState value) async* {
        yield AuthState.initial();
      },
    );
  }
}
