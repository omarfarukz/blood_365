import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:blood_365/domain/auth/i_auth_provider.dart';
import 'package:blood_365/domain/core/failure.dart';

import 'package:blood_365/domain/request_blood/i_request_provider.dart';
import 'package:blood_365/domain/request_blood/request.dart';
import 'package:blood_365/domain/tips/tips.dart';
import 'package:blood_365/domain/user/user_profile.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:logger/logger.dart';

part 'request_event.dart';
part 'request_state.dart';
part 'request_bloc.freezed.dart';

class RequestBloc extends Bloc<RequestEvent, RequestState> {
  final IAuthProvider authProvider;
  final IRequestProvider requestProvider;
  RequestBloc(this.requestProvider, this.authProvider)
      : super(RequestState.initial());

  @override
  Stream<RequestState> mapEventToState(
    RequestEvent event,
  ) async* {
    yield* event.map(
        onProgressRequestList: (OnProgressRequestListEvent value) async* {
      final Either<Failure, List<RequestData>> requestOption =
          await requestProvider.getUpcomingRequest();
      yield requestOption.fold(
        (l) => state.copyWith(error: l.error),
        (r) => state.copyWith(onProgressRequestList: r),
      );
    }, updateRequest: (UpdateRequestEvent value) async* {
      yield state.copyWith(isSubmitting: true);
      final Either<Failure, Unit> requestOption =
          await requestProvider.updateRequestData(value.requestData.copyWith(
              status: "accepted",
              recieverId: authProvider.fireAuth.currentUser!.uid,
              recieverPhone: authProvider.user.phoneNumber));
      yield requestOption.fold(
        (l) => state.copyWith(
            isSubmitting: false, isSubmitted: false, error: l.error),
        (r) => state.copyWith(isSubmitted: true, isSubmitting: false),
      );
    }, confirmRequest: (ConfirmRequestEvent value) async* {
      yield state.copyWith(isSubmitting: true);
      final Either<Failure, Unit> requestOption = await requestProvider
          .confirmRequestData(value.requestData.copyWith(status: "success"));
      yield requestOption.fold(
        (l) => state.copyWith(
            isSubmitting: false, isSubmitted: false, error: l.error),
        (r) => state.copyWith(isSubmitted: true, isSubmitting: false),
      );
    }, completeRequest: (CompleteRequestEvent value) async* {
      yield state.copyWith(isSubmitting: true);
      final Either<Failure, Unit> requestOption = await requestProvider
          .completeRequestData(value.requestData.copyWith(status: "completed"));
      yield requestOption.fold(
        (l) => state.copyWith(
            isSubmitting: false, isSubmitted: false, error: l.error),
        (r) => state.copyWith(isSubmitted: true, isSubmitting: false),
      );
    }, postRequest: (PostRequestEvent value) async* {
      yield state.copyWith(isSubmitting: true);
      final Either<Failure, Unit> requestOption =
          await requestProvider.postRequestData(value.requestData.copyWith(
              status: "pending",
              requestSenderId: authProvider.fireAuth.currentUser!.uid,
              senderPhone: authProvider.user.phoneNumber));

      yield requestOption.fold(
        (l) => state.copyWith(
            isSubmitted: false, error: l.error, isSubmitting: false),
        (r) => state.copyWith(isSubmitted: true, isSubmitting: false),
      );
    }, getRequestList: (GetRequestList value) async* {
      //yield state.copyWith(isSubmitting: true);
      final Either<Failure, Position> currentLocation =
          await requestProvider.getCurrentPosition();

      final Either<Failure, List<RequestData>> requestOption =
          await currentLocation.fold(
        (l) => left(l),
        (r) {
          Logger().i(
              "got location ${UserLocation(r.latitude, r.longitude).toJson()}");

          return requestProvider.getPendingRequest(authProvider.user.bloodGroup,
              UserLocation(r.latitude, r.longitude));
        },
      );

      yield requestOption.fold(
        (l) => state.copyWith(error: l.error),
        (r) => state.copyWith(requestList: r),
      );
    }, getTipsList: (GetTipsList value) async* {
      final Either<Failure, List<TipsData>> requestOption =
          await requestProvider.getTipsList();
      yield requestOption.fold(
        (l) => state.copyWith(error: l.error),
        (r) => state.copyWith(tips: r),
      );
    }, getMyRequestList: (GetMyRequestList value) async* {
      final Either<Failure, List<RequestData>> requestOption =
          await requestProvider.getMyRequestList();
      yield requestOption.fold(
        (l) => state.copyWith(error: l.error),
        (r) => state.copyWith(myRequest: r),
      );
    }, getHistoryRequestListEvent: (GetHistoryRequestListEvent value) async* {
      final Either<Failure, List<RequestData>> requestOption =
          await requestProvider.getHistoryRequestList();
      yield requestOption.fold(
        (l) => state.copyWith(
          error: l.error,
          isSubmitting: false,
        ),
        (r) => state.copyWith(
          historyRequest: r,
          isSubmitting: false,
        ),
      );
    }, getCurrentLocation: (GetCurrentLocation value) async* {
      final Either<Failure, Position> currentLocation =
          await requestProvider.getCurrentPosition();

      yield currentLocation.fold(
        (l) => state.copyWith(error: l.error),
        (r) {
          print("map longi ${r.longitude}");
          return state.copyWith(
              myLocation: UserLocation(r.latitude, r.longitude));
        },
      );
    }, getNearbyUsers: (GetNearbyUsers value) async* {
      final Either<Failure, List<UserLocation>> response = await requestProvider
          .getNearbyDoners(value.bloodGroup, value.mylocation);
      yield response.fold((l) => state.copyWith(error: l.error),
          (r) => state.copyWith(nearbyDonersList: r));
    });
    //
  }
}
