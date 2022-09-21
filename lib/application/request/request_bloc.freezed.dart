// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RequestEventTearOff {
  const _$RequestEventTearOff();

  PostRequestEvent postRequest(RequestData requestData) {
    return PostRequestEvent(
      requestData,
    );
  }

  OnProgressRequestListEvent onProgressRequestList() {
    return const OnProgressRequestListEvent();
  }

  UpdateRequestEvent updateRequest(RequestData requestData) {
    return UpdateRequestEvent(
      requestData,
    );
  }

  ConfirmRequestEvent confirmRequest(RequestData requestData) {
    return ConfirmRequestEvent(
      requestData,
    );
  }

  CompleteRequestEvent completeRequest(RequestData requestData) {
    return CompleteRequestEvent(
      requestData,
    );
  }

  GetRequestList getRequestList() {
    return const GetRequestList();
  }

  GetMyRequestList getMyRequestList() {
    return const GetMyRequestList();
  }

  GetHistoryRequestListEvent getHistoryRequestListEvent() {
    return const GetHistoryRequestListEvent();
  }

  GetTipsList getTipsList() {
    return const GetTipsList();
  }

  GetCurrentLocation getCurrentLocation() {
    return const GetCurrentLocation();
  }

  GetNearbyUsers getNearbyUsers(String bloodGroup, UserLocation mylocation) {
    return GetNearbyUsers(
      bloodGroup,
      mylocation,
    );
  }
}

/// @nodoc
const $RequestEvent = _$RequestEventTearOff();

/// @nodoc
mixin _$RequestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestData requestData) postRequest,
    required TResult Function() onProgressRequestList,
    required TResult Function(RequestData requestData) updateRequest,
    required TResult Function(RequestData requestData) confirmRequest,
    required TResult Function(RequestData requestData) completeRequest,
    required TResult Function() getRequestList,
    required TResult Function() getMyRequestList,
    required TResult Function() getHistoryRequestListEvent,
    required TResult Function() getTipsList,
    required TResult Function() getCurrentLocation,
    required TResult Function(String bloodGroup, UserLocation mylocation)
        getNearbyUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestData requestData)? postRequest,
    TResult Function()? onProgressRequestList,
    TResult Function(RequestData requestData)? updateRequest,
    TResult Function(RequestData requestData)? confirmRequest,
    TResult Function(RequestData requestData)? completeRequest,
    TResult Function()? getRequestList,
    TResult Function()? getMyRequestList,
    TResult Function()? getHistoryRequestListEvent,
    TResult Function()? getTipsList,
    TResult Function()? getCurrentLocation,
    TResult Function(String bloodGroup, UserLocation mylocation)?
        getNearbyUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostRequestEvent value) postRequest,
    required TResult Function(OnProgressRequestListEvent value)
        onProgressRequestList,
    required TResult Function(UpdateRequestEvent value) updateRequest,
    required TResult Function(ConfirmRequestEvent value) confirmRequest,
    required TResult Function(CompleteRequestEvent value) completeRequest,
    required TResult Function(GetRequestList value) getRequestList,
    required TResult Function(GetMyRequestList value) getMyRequestList,
    required TResult Function(GetHistoryRequestListEvent value)
        getHistoryRequestListEvent,
    required TResult Function(GetTipsList value) getTipsList,
    required TResult Function(GetCurrentLocation value) getCurrentLocation,
    required TResult Function(GetNearbyUsers value) getNearbyUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostRequestEvent value)? postRequest,
    TResult Function(OnProgressRequestListEvent value)? onProgressRequestList,
    TResult Function(UpdateRequestEvent value)? updateRequest,
    TResult Function(ConfirmRequestEvent value)? confirmRequest,
    TResult Function(CompleteRequestEvent value)? completeRequest,
    TResult Function(GetRequestList value)? getRequestList,
    TResult Function(GetMyRequestList value)? getMyRequestList,
    TResult Function(GetHistoryRequestListEvent value)?
        getHistoryRequestListEvent,
    TResult Function(GetTipsList value)? getTipsList,
    TResult Function(GetCurrentLocation value)? getCurrentLocation,
    TResult Function(GetNearbyUsers value)? getNearbyUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestEventCopyWith<$Res> {
  factory $RequestEventCopyWith(
          RequestEvent value, $Res Function(RequestEvent) then) =
      _$RequestEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestEventCopyWithImpl<$Res> implements $RequestEventCopyWith<$Res> {
  _$RequestEventCopyWithImpl(this._value, this._then);

  final RequestEvent _value;
  // ignore: unused_field
  final $Res Function(RequestEvent) _then;
}

/// @nodoc
abstract class $PostRequestEventCopyWith<$Res> {
  factory $PostRequestEventCopyWith(
          PostRequestEvent value, $Res Function(PostRequestEvent) then) =
      _$PostRequestEventCopyWithImpl<$Res>;
  $Res call({RequestData requestData});
}

/// @nodoc
class _$PostRequestEventCopyWithImpl<$Res>
    extends _$RequestEventCopyWithImpl<$Res>
    implements $PostRequestEventCopyWith<$Res> {
  _$PostRequestEventCopyWithImpl(
      PostRequestEvent _value, $Res Function(PostRequestEvent) _then)
      : super(_value, (v) => _then(v as PostRequestEvent));

  @override
  PostRequestEvent get _value => super._value as PostRequestEvent;

  @override
  $Res call({
    Object? requestData = freezed,
  }) {
    return _then(PostRequestEvent(
      requestData == freezed
          ? _value.requestData
          : requestData // ignore: cast_nullable_to_non_nullable
              as RequestData,
    ));
  }
}

/// @nodoc

class _$PostRequestEvent implements PostRequestEvent {
  const _$PostRequestEvent(this.requestData);

  @override
  final RequestData requestData;

  @override
  String toString() {
    return 'RequestEvent.postRequest(requestData: $requestData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PostRequestEvent &&
            (identical(other.requestData, requestData) ||
                const DeepCollectionEquality()
                    .equals(other.requestData, requestData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(requestData);

  @JsonKey(ignore: true)
  @override
  $PostRequestEventCopyWith<PostRequestEvent> get copyWith =>
      _$PostRequestEventCopyWithImpl<PostRequestEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestData requestData) postRequest,
    required TResult Function() onProgressRequestList,
    required TResult Function(RequestData requestData) updateRequest,
    required TResult Function(RequestData requestData) confirmRequest,
    required TResult Function(RequestData requestData) completeRequest,
    required TResult Function() getRequestList,
    required TResult Function() getMyRequestList,
    required TResult Function() getHistoryRequestListEvent,
    required TResult Function() getTipsList,
    required TResult Function() getCurrentLocation,
    required TResult Function(String bloodGroup, UserLocation mylocation)
        getNearbyUsers,
  }) {
    return postRequest(requestData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestData requestData)? postRequest,
    TResult Function()? onProgressRequestList,
    TResult Function(RequestData requestData)? updateRequest,
    TResult Function(RequestData requestData)? confirmRequest,
    TResult Function(RequestData requestData)? completeRequest,
    TResult Function()? getRequestList,
    TResult Function()? getMyRequestList,
    TResult Function()? getHistoryRequestListEvent,
    TResult Function()? getTipsList,
    TResult Function()? getCurrentLocation,
    TResult Function(String bloodGroup, UserLocation mylocation)?
        getNearbyUsers,
    required TResult orElse(),
  }) {
    if (postRequest != null) {
      return postRequest(requestData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostRequestEvent value) postRequest,
    required TResult Function(OnProgressRequestListEvent value)
        onProgressRequestList,
    required TResult Function(UpdateRequestEvent value) updateRequest,
    required TResult Function(ConfirmRequestEvent value) confirmRequest,
    required TResult Function(CompleteRequestEvent value) completeRequest,
    required TResult Function(GetRequestList value) getRequestList,
    required TResult Function(GetMyRequestList value) getMyRequestList,
    required TResult Function(GetHistoryRequestListEvent value)
        getHistoryRequestListEvent,
    required TResult Function(GetTipsList value) getTipsList,
    required TResult Function(GetCurrentLocation value) getCurrentLocation,
    required TResult Function(GetNearbyUsers value) getNearbyUsers,
  }) {
    return postRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostRequestEvent value)? postRequest,
    TResult Function(OnProgressRequestListEvent value)? onProgressRequestList,
    TResult Function(UpdateRequestEvent value)? updateRequest,
    TResult Function(ConfirmRequestEvent value)? confirmRequest,
    TResult Function(CompleteRequestEvent value)? completeRequest,
    TResult Function(GetRequestList value)? getRequestList,
    TResult Function(GetMyRequestList value)? getMyRequestList,
    TResult Function(GetHistoryRequestListEvent value)?
        getHistoryRequestListEvent,
    TResult Function(GetTipsList value)? getTipsList,
    TResult Function(GetCurrentLocation value)? getCurrentLocation,
    TResult Function(GetNearbyUsers value)? getNearbyUsers,
    required TResult orElse(),
  }) {
    if (postRequest != null) {
      return postRequest(this);
    }
    return orElse();
  }
}

abstract class PostRequestEvent implements RequestEvent {
  const factory PostRequestEvent(RequestData requestData) = _$PostRequestEvent;

  RequestData get requestData => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostRequestEventCopyWith<PostRequestEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnProgressRequestListEventCopyWith<$Res> {
  factory $OnProgressRequestListEventCopyWith(OnProgressRequestListEvent value,
          $Res Function(OnProgressRequestListEvent) then) =
      _$OnProgressRequestListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnProgressRequestListEventCopyWithImpl<$Res>
    extends _$RequestEventCopyWithImpl<$Res>
    implements $OnProgressRequestListEventCopyWith<$Res> {
  _$OnProgressRequestListEventCopyWithImpl(OnProgressRequestListEvent _value,
      $Res Function(OnProgressRequestListEvent) _then)
      : super(_value, (v) => _then(v as OnProgressRequestListEvent));

  @override
  OnProgressRequestListEvent get _value =>
      super._value as OnProgressRequestListEvent;
}

/// @nodoc

class _$OnProgressRequestListEvent implements OnProgressRequestListEvent {
  const _$OnProgressRequestListEvent();

  @override
  String toString() {
    return 'RequestEvent.onProgressRequestList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnProgressRequestListEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestData requestData) postRequest,
    required TResult Function() onProgressRequestList,
    required TResult Function(RequestData requestData) updateRequest,
    required TResult Function(RequestData requestData) confirmRequest,
    required TResult Function(RequestData requestData) completeRequest,
    required TResult Function() getRequestList,
    required TResult Function() getMyRequestList,
    required TResult Function() getHistoryRequestListEvent,
    required TResult Function() getTipsList,
    required TResult Function() getCurrentLocation,
    required TResult Function(String bloodGroup, UserLocation mylocation)
        getNearbyUsers,
  }) {
    return onProgressRequestList();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestData requestData)? postRequest,
    TResult Function()? onProgressRequestList,
    TResult Function(RequestData requestData)? updateRequest,
    TResult Function(RequestData requestData)? confirmRequest,
    TResult Function(RequestData requestData)? completeRequest,
    TResult Function()? getRequestList,
    TResult Function()? getMyRequestList,
    TResult Function()? getHistoryRequestListEvent,
    TResult Function()? getTipsList,
    TResult Function()? getCurrentLocation,
    TResult Function(String bloodGroup, UserLocation mylocation)?
        getNearbyUsers,
    required TResult orElse(),
  }) {
    if (onProgressRequestList != null) {
      return onProgressRequestList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostRequestEvent value) postRequest,
    required TResult Function(OnProgressRequestListEvent value)
        onProgressRequestList,
    required TResult Function(UpdateRequestEvent value) updateRequest,
    required TResult Function(ConfirmRequestEvent value) confirmRequest,
    required TResult Function(CompleteRequestEvent value) completeRequest,
    required TResult Function(GetRequestList value) getRequestList,
    required TResult Function(GetMyRequestList value) getMyRequestList,
    required TResult Function(GetHistoryRequestListEvent value)
        getHistoryRequestListEvent,
    required TResult Function(GetTipsList value) getTipsList,
    required TResult Function(GetCurrentLocation value) getCurrentLocation,
    required TResult Function(GetNearbyUsers value) getNearbyUsers,
  }) {
    return onProgressRequestList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostRequestEvent value)? postRequest,
    TResult Function(OnProgressRequestListEvent value)? onProgressRequestList,
    TResult Function(UpdateRequestEvent value)? updateRequest,
    TResult Function(ConfirmRequestEvent value)? confirmRequest,
    TResult Function(CompleteRequestEvent value)? completeRequest,
    TResult Function(GetRequestList value)? getRequestList,
    TResult Function(GetMyRequestList value)? getMyRequestList,
    TResult Function(GetHistoryRequestListEvent value)?
        getHistoryRequestListEvent,
    TResult Function(GetTipsList value)? getTipsList,
    TResult Function(GetCurrentLocation value)? getCurrentLocation,
    TResult Function(GetNearbyUsers value)? getNearbyUsers,
    required TResult orElse(),
  }) {
    if (onProgressRequestList != null) {
      return onProgressRequestList(this);
    }
    return orElse();
  }
}

abstract class OnProgressRequestListEvent implements RequestEvent {
  const factory OnProgressRequestListEvent() = _$OnProgressRequestListEvent;
}

/// @nodoc
abstract class $UpdateRequestEventCopyWith<$Res> {
  factory $UpdateRequestEventCopyWith(
          UpdateRequestEvent value, $Res Function(UpdateRequestEvent) then) =
      _$UpdateRequestEventCopyWithImpl<$Res>;
  $Res call({RequestData requestData});
}

/// @nodoc
class _$UpdateRequestEventCopyWithImpl<$Res>
    extends _$RequestEventCopyWithImpl<$Res>
    implements $UpdateRequestEventCopyWith<$Res> {
  _$UpdateRequestEventCopyWithImpl(
      UpdateRequestEvent _value, $Res Function(UpdateRequestEvent) _then)
      : super(_value, (v) => _then(v as UpdateRequestEvent));

  @override
  UpdateRequestEvent get _value => super._value as UpdateRequestEvent;

  @override
  $Res call({
    Object? requestData = freezed,
  }) {
    return _then(UpdateRequestEvent(
      requestData == freezed
          ? _value.requestData
          : requestData // ignore: cast_nullable_to_non_nullable
              as RequestData,
    ));
  }
}

/// @nodoc

class _$UpdateRequestEvent implements UpdateRequestEvent {
  const _$UpdateRequestEvent(this.requestData);

  @override
  final RequestData requestData;

  @override
  String toString() {
    return 'RequestEvent.updateRequest(requestData: $requestData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateRequestEvent &&
            (identical(other.requestData, requestData) ||
                const DeepCollectionEquality()
                    .equals(other.requestData, requestData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(requestData);

  @JsonKey(ignore: true)
  @override
  $UpdateRequestEventCopyWith<UpdateRequestEvent> get copyWith =>
      _$UpdateRequestEventCopyWithImpl<UpdateRequestEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestData requestData) postRequest,
    required TResult Function() onProgressRequestList,
    required TResult Function(RequestData requestData) updateRequest,
    required TResult Function(RequestData requestData) confirmRequest,
    required TResult Function(RequestData requestData) completeRequest,
    required TResult Function() getRequestList,
    required TResult Function() getMyRequestList,
    required TResult Function() getHistoryRequestListEvent,
    required TResult Function() getTipsList,
    required TResult Function() getCurrentLocation,
    required TResult Function(String bloodGroup, UserLocation mylocation)
        getNearbyUsers,
  }) {
    return updateRequest(requestData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestData requestData)? postRequest,
    TResult Function()? onProgressRequestList,
    TResult Function(RequestData requestData)? updateRequest,
    TResult Function(RequestData requestData)? confirmRequest,
    TResult Function(RequestData requestData)? completeRequest,
    TResult Function()? getRequestList,
    TResult Function()? getMyRequestList,
    TResult Function()? getHistoryRequestListEvent,
    TResult Function()? getTipsList,
    TResult Function()? getCurrentLocation,
    TResult Function(String bloodGroup, UserLocation mylocation)?
        getNearbyUsers,
    required TResult orElse(),
  }) {
    if (updateRequest != null) {
      return updateRequest(requestData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostRequestEvent value) postRequest,
    required TResult Function(OnProgressRequestListEvent value)
        onProgressRequestList,
    required TResult Function(UpdateRequestEvent value) updateRequest,
    required TResult Function(ConfirmRequestEvent value) confirmRequest,
    required TResult Function(CompleteRequestEvent value) completeRequest,
    required TResult Function(GetRequestList value) getRequestList,
    required TResult Function(GetMyRequestList value) getMyRequestList,
    required TResult Function(GetHistoryRequestListEvent value)
        getHistoryRequestListEvent,
    required TResult Function(GetTipsList value) getTipsList,
    required TResult Function(GetCurrentLocation value) getCurrentLocation,
    required TResult Function(GetNearbyUsers value) getNearbyUsers,
  }) {
    return updateRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostRequestEvent value)? postRequest,
    TResult Function(OnProgressRequestListEvent value)? onProgressRequestList,
    TResult Function(UpdateRequestEvent value)? updateRequest,
    TResult Function(ConfirmRequestEvent value)? confirmRequest,
    TResult Function(CompleteRequestEvent value)? completeRequest,
    TResult Function(GetRequestList value)? getRequestList,
    TResult Function(GetMyRequestList value)? getMyRequestList,
    TResult Function(GetHistoryRequestListEvent value)?
        getHistoryRequestListEvent,
    TResult Function(GetTipsList value)? getTipsList,
    TResult Function(GetCurrentLocation value)? getCurrentLocation,
    TResult Function(GetNearbyUsers value)? getNearbyUsers,
    required TResult orElse(),
  }) {
    if (updateRequest != null) {
      return updateRequest(this);
    }
    return orElse();
  }
}

abstract class UpdateRequestEvent implements RequestEvent {
  const factory UpdateRequestEvent(RequestData requestData) =
      _$UpdateRequestEvent;

  RequestData get requestData => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateRequestEventCopyWith<UpdateRequestEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmRequestEventCopyWith<$Res> {
  factory $ConfirmRequestEventCopyWith(
          ConfirmRequestEvent value, $Res Function(ConfirmRequestEvent) then) =
      _$ConfirmRequestEventCopyWithImpl<$Res>;
  $Res call({RequestData requestData});
}

/// @nodoc
class _$ConfirmRequestEventCopyWithImpl<$Res>
    extends _$RequestEventCopyWithImpl<$Res>
    implements $ConfirmRequestEventCopyWith<$Res> {
  _$ConfirmRequestEventCopyWithImpl(
      ConfirmRequestEvent _value, $Res Function(ConfirmRequestEvent) _then)
      : super(_value, (v) => _then(v as ConfirmRequestEvent));

  @override
  ConfirmRequestEvent get _value => super._value as ConfirmRequestEvent;

  @override
  $Res call({
    Object? requestData = freezed,
  }) {
    return _then(ConfirmRequestEvent(
      requestData == freezed
          ? _value.requestData
          : requestData // ignore: cast_nullable_to_non_nullable
              as RequestData,
    ));
  }
}

/// @nodoc

class _$ConfirmRequestEvent implements ConfirmRequestEvent {
  const _$ConfirmRequestEvent(this.requestData);

  @override
  final RequestData requestData;

  @override
  String toString() {
    return 'RequestEvent.confirmRequest(requestData: $requestData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmRequestEvent &&
            (identical(other.requestData, requestData) ||
                const DeepCollectionEquality()
                    .equals(other.requestData, requestData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(requestData);

  @JsonKey(ignore: true)
  @override
  $ConfirmRequestEventCopyWith<ConfirmRequestEvent> get copyWith =>
      _$ConfirmRequestEventCopyWithImpl<ConfirmRequestEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestData requestData) postRequest,
    required TResult Function() onProgressRequestList,
    required TResult Function(RequestData requestData) updateRequest,
    required TResult Function(RequestData requestData) confirmRequest,
    required TResult Function(RequestData requestData) completeRequest,
    required TResult Function() getRequestList,
    required TResult Function() getMyRequestList,
    required TResult Function() getHistoryRequestListEvent,
    required TResult Function() getTipsList,
    required TResult Function() getCurrentLocation,
    required TResult Function(String bloodGroup, UserLocation mylocation)
        getNearbyUsers,
  }) {
    return confirmRequest(requestData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestData requestData)? postRequest,
    TResult Function()? onProgressRequestList,
    TResult Function(RequestData requestData)? updateRequest,
    TResult Function(RequestData requestData)? confirmRequest,
    TResult Function(RequestData requestData)? completeRequest,
    TResult Function()? getRequestList,
    TResult Function()? getMyRequestList,
    TResult Function()? getHistoryRequestListEvent,
    TResult Function()? getTipsList,
    TResult Function()? getCurrentLocation,
    TResult Function(String bloodGroup, UserLocation mylocation)?
        getNearbyUsers,
    required TResult orElse(),
  }) {
    if (confirmRequest != null) {
      return confirmRequest(requestData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostRequestEvent value) postRequest,
    required TResult Function(OnProgressRequestListEvent value)
        onProgressRequestList,
    required TResult Function(UpdateRequestEvent value) updateRequest,
    required TResult Function(ConfirmRequestEvent value) confirmRequest,
    required TResult Function(CompleteRequestEvent value) completeRequest,
    required TResult Function(GetRequestList value) getRequestList,
    required TResult Function(GetMyRequestList value) getMyRequestList,
    required TResult Function(GetHistoryRequestListEvent value)
        getHistoryRequestListEvent,
    required TResult Function(GetTipsList value) getTipsList,
    required TResult Function(GetCurrentLocation value) getCurrentLocation,
    required TResult Function(GetNearbyUsers value) getNearbyUsers,
  }) {
    return confirmRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostRequestEvent value)? postRequest,
    TResult Function(OnProgressRequestListEvent value)? onProgressRequestList,
    TResult Function(UpdateRequestEvent value)? updateRequest,
    TResult Function(ConfirmRequestEvent value)? confirmRequest,
    TResult Function(CompleteRequestEvent value)? completeRequest,
    TResult Function(GetRequestList value)? getRequestList,
    TResult Function(GetMyRequestList value)? getMyRequestList,
    TResult Function(GetHistoryRequestListEvent value)?
        getHistoryRequestListEvent,
    TResult Function(GetTipsList value)? getTipsList,
    TResult Function(GetCurrentLocation value)? getCurrentLocation,
    TResult Function(GetNearbyUsers value)? getNearbyUsers,
    required TResult orElse(),
  }) {
    if (confirmRequest != null) {
      return confirmRequest(this);
    }
    return orElse();
  }
}

abstract class ConfirmRequestEvent implements RequestEvent {
  const factory ConfirmRequestEvent(RequestData requestData) =
      _$ConfirmRequestEvent;

  RequestData get requestData => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfirmRequestEventCopyWith<ConfirmRequestEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompleteRequestEventCopyWith<$Res> {
  factory $CompleteRequestEventCopyWith(CompleteRequestEvent value,
          $Res Function(CompleteRequestEvent) then) =
      _$CompleteRequestEventCopyWithImpl<$Res>;
  $Res call({RequestData requestData});
}

/// @nodoc
class _$CompleteRequestEventCopyWithImpl<$Res>
    extends _$RequestEventCopyWithImpl<$Res>
    implements $CompleteRequestEventCopyWith<$Res> {
  _$CompleteRequestEventCopyWithImpl(
      CompleteRequestEvent _value, $Res Function(CompleteRequestEvent) _then)
      : super(_value, (v) => _then(v as CompleteRequestEvent));

  @override
  CompleteRequestEvent get _value => super._value as CompleteRequestEvent;

  @override
  $Res call({
    Object? requestData = freezed,
  }) {
    return _then(CompleteRequestEvent(
      requestData == freezed
          ? _value.requestData
          : requestData // ignore: cast_nullable_to_non_nullable
              as RequestData,
    ));
  }
}

/// @nodoc

class _$CompleteRequestEvent implements CompleteRequestEvent {
  const _$CompleteRequestEvent(this.requestData);

  @override
  final RequestData requestData;

  @override
  String toString() {
    return 'RequestEvent.completeRequest(requestData: $requestData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CompleteRequestEvent &&
            (identical(other.requestData, requestData) ||
                const DeepCollectionEquality()
                    .equals(other.requestData, requestData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(requestData);

  @JsonKey(ignore: true)
  @override
  $CompleteRequestEventCopyWith<CompleteRequestEvent> get copyWith =>
      _$CompleteRequestEventCopyWithImpl<CompleteRequestEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestData requestData) postRequest,
    required TResult Function() onProgressRequestList,
    required TResult Function(RequestData requestData) updateRequest,
    required TResult Function(RequestData requestData) confirmRequest,
    required TResult Function(RequestData requestData) completeRequest,
    required TResult Function() getRequestList,
    required TResult Function() getMyRequestList,
    required TResult Function() getHistoryRequestListEvent,
    required TResult Function() getTipsList,
    required TResult Function() getCurrentLocation,
    required TResult Function(String bloodGroup, UserLocation mylocation)
        getNearbyUsers,
  }) {
    return completeRequest(requestData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestData requestData)? postRequest,
    TResult Function()? onProgressRequestList,
    TResult Function(RequestData requestData)? updateRequest,
    TResult Function(RequestData requestData)? confirmRequest,
    TResult Function(RequestData requestData)? completeRequest,
    TResult Function()? getRequestList,
    TResult Function()? getMyRequestList,
    TResult Function()? getHistoryRequestListEvent,
    TResult Function()? getTipsList,
    TResult Function()? getCurrentLocation,
    TResult Function(String bloodGroup, UserLocation mylocation)?
        getNearbyUsers,
    required TResult orElse(),
  }) {
    if (completeRequest != null) {
      return completeRequest(requestData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostRequestEvent value) postRequest,
    required TResult Function(OnProgressRequestListEvent value)
        onProgressRequestList,
    required TResult Function(UpdateRequestEvent value) updateRequest,
    required TResult Function(ConfirmRequestEvent value) confirmRequest,
    required TResult Function(CompleteRequestEvent value) completeRequest,
    required TResult Function(GetRequestList value) getRequestList,
    required TResult Function(GetMyRequestList value) getMyRequestList,
    required TResult Function(GetHistoryRequestListEvent value)
        getHistoryRequestListEvent,
    required TResult Function(GetTipsList value) getTipsList,
    required TResult Function(GetCurrentLocation value) getCurrentLocation,
    required TResult Function(GetNearbyUsers value) getNearbyUsers,
  }) {
    return completeRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostRequestEvent value)? postRequest,
    TResult Function(OnProgressRequestListEvent value)? onProgressRequestList,
    TResult Function(UpdateRequestEvent value)? updateRequest,
    TResult Function(ConfirmRequestEvent value)? confirmRequest,
    TResult Function(CompleteRequestEvent value)? completeRequest,
    TResult Function(GetRequestList value)? getRequestList,
    TResult Function(GetMyRequestList value)? getMyRequestList,
    TResult Function(GetHistoryRequestListEvent value)?
        getHistoryRequestListEvent,
    TResult Function(GetTipsList value)? getTipsList,
    TResult Function(GetCurrentLocation value)? getCurrentLocation,
    TResult Function(GetNearbyUsers value)? getNearbyUsers,
    required TResult orElse(),
  }) {
    if (completeRequest != null) {
      return completeRequest(this);
    }
    return orElse();
  }
}

abstract class CompleteRequestEvent implements RequestEvent {
  const factory CompleteRequestEvent(RequestData requestData) =
      _$CompleteRequestEvent;

  RequestData get requestData => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompleteRequestEventCopyWith<CompleteRequestEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRequestListCopyWith<$Res> {
  factory $GetRequestListCopyWith(
          GetRequestList value, $Res Function(GetRequestList) then) =
      _$GetRequestListCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetRequestListCopyWithImpl<$Res>
    extends _$RequestEventCopyWithImpl<$Res>
    implements $GetRequestListCopyWith<$Res> {
  _$GetRequestListCopyWithImpl(
      GetRequestList _value, $Res Function(GetRequestList) _then)
      : super(_value, (v) => _then(v as GetRequestList));

  @override
  GetRequestList get _value => super._value as GetRequestList;
}

/// @nodoc

class _$GetRequestList implements GetRequestList {
  const _$GetRequestList();

  @override
  String toString() {
    return 'RequestEvent.getRequestList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetRequestList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestData requestData) postRequest,
    required TResult Function() onProgressRequestList,
    required TResult Function(RequestData requestData) updateRequest,
    required TResult Function(RequestData requestData) confirmRequest,
    required TResult Function(RequestData requestData) completeRequest,
    required TResult Function() getRequestList,
    required TResult Function() getMyRequestList,
    required TResult Function() getHistoryRequestListEvent,
    required TResult Function() getTipsList,
    required TResult Function() getCurrentLocation,
    required TResult Function(String bloodGroup, UserLocation mylocation)
        getNearbyUsers,
  }) {
    return getRequestList();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestData requestData)? postRequest,
    TResult Function()? onProgressRequestList,
    TResult Function(RequestData requestData)? updateRequest,
    TResult Function(RequestData requestData)? confirmRequest,
    TResult Function(RequestData requestData)? completeRequest,
    TResult Function()? getRequestList,
    TResult Function()? getMyRequestList,
    TResult Function()? getHistoryRequestListEvent,
    TResult Function()? getTipsList,
    TResult Function()? getCurrentLocation,
    TResult Function(String bloodGroup, UserLocation mylocation)?
        getNearbyUsers,
    required TResult orElse(),
  }) {
    if (getRequestList != null) {
      return getRequestList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostRequestEvent value) postRequest,
    required TResult Function(OnProgressRequestListEvent value)
        onProgressRequestList,
    required TResult Function(UpdateRequestEvent value) updateRequest,
    required TResult Function(ConfirmRequestEvent value) confirmRequest,
    required TResult Function(CompleteRequestEvent value) completeRequest,
    required TResult Function(GetRequestList value) getRequestList,
    required TResult Function(GetMyRequestList value) getMyRequestList,
    required TResult Function(GetHistoryRequestListEvent value)
        getHistoryRequestListEvent,
    required TResult Function(GetTipsList value) getTipsList,
    required TResult Function(GetCurrentLocation value) getCurrentLocation,
    required TResult Function(GetNearbyUsers value) getNearbyUsers,
  }) {
    return getRequestList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostRequestEvent value)? postRequest,
    TResult Function(OnProgressRequestListEvent value)? onProgressRequestList,
    TResult Function(UpdateRequestEvent value)? updateRequest,
    TResult Function(ConfirmRequestEvent value)? confirmRequest,
    TResult Function(CompleteRequestEvent value)? completeRequest,
    TResult Function(GetRequestList value)? getRequestList,
    TResult Function(GetMyRequestList value)? getMyRequestList,
    TResult Function(GetHistoryRequestListEvent value)?
        getHistoryRequestListEvent,
    TResult Function(GetTipsList value)? getTipsList,
    TResult Function(GetCurrentLocation value)? getCurrentLocation,
    TResult Function(GetNearbyUsers value)? getNearbyUsers,
    required TResult orElse(),
  }) {
    if (getRequestList != null) {
      return getRequestList(this);
    }
    return orElse();
  }
}

abstract class GetRequestList implements RequestEvent {
  const factory GetRequestList() = _$GetRequestList;
}

/// @nodoc
abstract class $GetMyRequestListCopyWith<$Res> {
  factory $GetMyRequestListCopyWith(
          GetMyRequestList value, $Res Function(GetMyRequestList) then) =
      _$GetMyRequestListCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetMyRequestListCopyWithImpl<$Res>
    extends _$RequestEventCopyWithImpl<$Res>
    implements $GetMyRequestListCopyWith<$Res> {
  _$GetMyRequestListCopyWithImpl(
      GetMyRequestList _value, $Res Function(GetMyRequestList) _then)
      : super(_value, (v) => _then(v as GetMyRequestList));

  @override
  GetMyRequestList get _value => super._value as GetMyRequestList;
}

/// @nodoc

class _$GetMyRequestList implements GetMyRequestList {
  const _$GetMyRequestList();

  @override
  String toString() {
    return 'RequestEvent.getMyRequestList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetMyRequestList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestData requestData) postRequest,
    required TResult Function() onProgressRequestList,
    required TResult Function(RequestData requestData) updateRequest,
    required TResult Function(RequestData requestData) confirmRequest,
    required TResult Function(RequestData requestData) completeRequest,
    required TResult Function() getRequestList,
    required TResult Function() getMyRequestList,
    required TResult Function() getHistoryRequestListEvent,
    required TResult Function() getTipsList,
    required TResult Function() getCurrentLocation,
    required TResult Function(String bloodGroup, UserLocation mylocation)
        getNearbyUsers,
  }) {
    return getMyRequestList();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestData requestData)? postRequest,
    TResult Function()? onProgressRequestList,
    TResult Function(RequestData requestData)? updateRequest,
    TResult Function(RequestData requestData)? confirmRequest,
    TResult Function(RequestData requestData)? completeRequest,
    TResult Function()? getRequestList,
    TResult Function()? getMyRequestList,
    TResult Function()? getHistoryRequestListEvent,
    TResult Function()? getTipsList,
    TResult Function()? getCurrentLocation,
    TResult Function(String bloodGroup, UserLocation mylocation)?
        getNearbyUsers,
    required TResult orElse(),
  }) {
    if (getMyRequestList != null) {
      return getMyRequestList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostRequestEvent value) postRequest,
    required TResult Function(OnProgressRequestListEvent value)
        onProgressRequestList,
    required TResult Function(UpdateRequestEvent value) updateRequest,
    required TResult Function(ConfirmRequestEvent value) confirmRequest,
    required TResult Function(CompleteRequestEvent value) completeRequest,
    required TResult Function(GetRequestList value) getRequestList,
    required TResult Function(GetMyRequestList value) getMyRequestList,
    required TResult Function(GetHistoryRequestListEvent value)
        getHistoryRequestListEvent,
    required TResult Function(GetTipsList value) getTipsList,
    required TResult Function(GetCurrentLocation value) getCurrentLocation,
    required TResult Function(GetNearbyUsers value) getNearbyUsers,
  }) {
    return getMyRequestList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostRequestEvent value)? postRequest,
    TResult Function(OnProgressRequestListEvent value)? onProgressRequestList,
    TResult Function(UpdateRequestEvent value)? updateRequest,
    TResult Function(ConfirmRequestEvent value)? confirmRequest,
    TResult Function(CompleteRequestEvent value)? completeRequest,
    TResult Function(GetRequestList value)? getRequestList,
    TResult Function(GetMyRequestList value)? getMyRequestList,
    TResult Function(GetHistoryRequestListEvent value)?
        getHistoryRequestListEvent,
    TResult Function(GetTipsList value)? getTipsList,
    TResult Function(GetCurrentLocation value)? getCurrentLocation,
    TResult Function(GetNearbyUsers value)? getNearbyUsers,
    required TResult orElse(),
  }) {
    if (getMyRequestList != null) {
      return getMyRequestList(this);
    }
    return orElse();
  }
}

abstract class GetMyRequestList implements RequestEvent {
  const factory GetMyRequestList() = _$GetMyRequestList;
}

/// @nodoc
abstract class $GetHistoryRequestListEventCopyWith<$Res> {
  factory $GetHistoryRequestListEventCopyWith(GetHistoryRequestListEvent value,
          $Res Function(GetHistoryRequestListEvent) then) =
      _$GetHistoryRequestListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetHistoryRequestListEventCopyWithImpl<$Res>
    extends _$RequestEventCopyWithImpl<$Res>
    implements $GetHistoryRequestListEventCopyWith<$Res> {
  _$GetHistoryRequestListEventCopyWithImpl(GetHistoryRequestListEvent _value,
      $Res Function(GetHistoryRequestListEvent) _then)
      : super(_value, (v) => _then(v as GetHistoryRequestListEvent));

  @override
  GetHistoryRequestListEvent get _value =>
      super._value as GetHistoryRequestListEvent;
}

/// @nodoc

class _$GetHistoryRequestListEvent implements GetHistoryRequestListEvent {
  const _$GetHistoryRequestListEvent();

  @override
  String toString() {
    return 'RequestEvent.getHistoryRequestListEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetHistoryRequestListEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestData requestData) postRequest,
    required TResult Function() onProgressRequestList,
    required TResult Function(RequestData requestData) updateRequest,
    required TResult Function(RequestData requestData) confirmRequest,
    required TResult Function(RequestData requestData) completeRequest,
    required TResult Function() getRequestList,
    required TResult Function() getMyRequestList,
    required TResult Function() getHistoryRequestListEvent,
    required TResult Function() getTipsList,
    required TResult Function() getCurrentLocation,
    required TResult Function(String bloodGroup, UserLocation mylocation)
        getNearbyUsers,
  }) {
    return getHistoryRequestListEvent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestData requestData)? postRequest,
    TResult Function()? onProgressRequestList,
    TResult Function(RequestData requestData)? updateRequest,
    TResult Function(RequestData requestData)? confirmRequest,
    TResult Function(RequestData requestData)? completeRequest,
    TResult Function()? getRequestList,
    TResult Function()? getMyRequestList,
    TResult Function()? getHistoryRequestListEvent,
    TResult Function()? getTipsList,
    TResult Function()? getCurrentLocation,
    TResult Function(String bloodGroup, UserLocation mylocation)?
        getNearbyUsers,
    required TResult orElse(),
  }) {
    if (getHistoryRequestListEvent != null) {
      return getHistoryRequestListEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostRequestEvent value) postRequest,
    required TResult Function(OnProgressRequestListEvent value)
        onProgressRequestList,
    required TResult Function(UpdateRequestEvent value) updateRequest,
    required TResult Function(ConfirmRequestEvent value) confirmRequest,
    required TResult Function(CompleteRequestEvent value) completeRequest,
    required TResult Function(GetRequestList value) getRequestList,
    required TResult Function(GetMyRequestList value) getMyRequestList,
    required TResult Function(GetHistoryRequestListEvent value)
        getHistoryRequestListEvent,
    required TResult Function(GetTipsList value) getTipsList,
    required TResult Function(GetCurrentLocation value) getCurrentLocation,
    required TResult Function(GetNearbyUsers value) getNearbyUsers,
  }) {
    return getHistoryRequestListEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostRequestEvent value)? postRequest,
    TResult Function(OnProgressRequestListEvent value)? onProgressRequestList,
    TResult Function(UpdateRequestEvent value)? updateRequest,
    TResult Function(ConfirmRequestEvent value)? confirmRequest,
    TResult Function(CompleteRequestEvent value)? completeRequest,
    TResult Function(GetRequestList value)? getRequestList,
    TResult Function(GetMyRequestList value)? getMyRequestList,
    TResult Function(GetHistoryRequestListEvent value)?
        getHistoryRequestListEvent,
    TResult Function(GetTipsList value)? getTipsList,
    TResult Function(GetCurrentLocation value)? getCurrentLocation,
    TResult Function(GetNearbyUsers value)? getNearbyUsers,
    required TResult orElse(),
  }) {
    if (getHistoryRequestListEvent != null) {
      return getHistoryRequestListEvent(this);
    }
    return orElse();
  }
}

abstract class GetHistoryRequestListEvent implements RequestEvent {
  const factory GetHistoryRequestListEvent() = _$GetHistoryRequestListEvent;
}

/// @nodoc
abstract class $GetTipsListCopyWith<$Res> {
  factory $GetTipsListCopyWith(
          GetTipsList value, $Res Function(GetTipsList) then) =
      _$GetTipsListCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetTipsListCopyWithImpl<$Res> extends _$RequestEventCopyWithImpl<$Res>
    implements $GetTipsListCopyWith<$Res> {
  _$GetTipsListCopyWithImpl(
      GetTipsList _value, $Res Function(GetTipsList) _then)
      : super(_value, (v) => _then(v as GetTipsList));

  @override
  GetTipsList get _value => super._value as GetTipsList;
}

/// @nodoc

class _$GetTipsList implements GetTipsList {
  const _$GetTipsList();

  @override
  String toString() {
    return 'RequestEvent.getTipsList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetTipsList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestData requestData) postRequest,
    required TResult Function() onProgressRequestList,
    required TResult Function(RequestData requestData) updateRequest,
    required TResult Function(RequestData requestData) confirmRequest,
    required TResult Function(RequestData requestData) completeRequest,
    required TResult Function() getRequestList,
    required TResult Function() getMyRequestList,
    required TResult Function() getHistoryRequestListEvent,
    required TResult Function() getTipsList,
    required TResult Function() getCurrentLocation,
    required TResult Function(String bloodGroup, UserLocation mylocation)
        getNearbyUsers,
  }) {
    return getTipsList();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestData requestData)? postRequest,
    TResult Function()? onProgressRequestList,
    TResult Function(RequestData requestData)? updateRequest,
    TResult Function(RequestData requestData)? confirmRequest,
    TResult Function(RequestData requestData)? completeRequest,
    TResult Function()? getRequestList,
    TResult Function()? getMyRequestList,
    TResult Function()? getHistoryRequestListEvent,
    TResult Function()? getTipsList,
    TResult Function()? getCurrentLocation,
    TResult Function(String bloodGroup, UserLocation mylocation)?
        getNearbyUsers,
    required TResult orElse(),
  }) {
    if (getTipsList != null) {
      return getTipsList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostRequestEvent value) postRequest,
    required TResult Function(OnProgressRequestListEvent value)
        onProgressRequestList,
    required TResult Function(UpdateRequestEvent value) updateRequest,
    required TResult Function(ConfirmRequestEvent value) confirmRequest,
    required TResult Function(CompleteRequestEvent value) completeRequest,
    required TResult Function(GetRequestList value) getRequestList,
    required TResult Function(GetMyRequestList value) getMyRequestList,
    required TResult Function(GetHistoryRequestListEvent value)
        getHistoryRequestListEvent,
    required TResult Function(GetTipsList value) getTipsList,
    required TResult Function(GetCurrentLocation value) getCurrentLocation,
    required TResult Function(GetNearbyUsers value) getNearbyUsers,
  }) {
    return getTipsList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostRequestEvent value)? postRequest,
    TResult Function(OnProgressRequestListEvent value)? onProgressRequestList,
    TResult Function(UpdateRequestEvent value)? updateRequest,
    TResult Function(ConfirmRequestEvent value)? confirmRequest,
    TResult Function(CompleteRequestEvent value)? completeRequest,
    TResult Function(GetRequestList value)? getRequestList,
    TResult Function(GetMyRequestList value)? getMyRequestList,
    TResult Function(GetHistoryRequestListEvent value)?
        getHistoryRequestListEvent,
    TResult Function(GetTipsList value)? getTipsList,
    TResult Function(GetCurrentLocation value)? getCurrentLocation,
    TResult Function(GetNearbyUsers value)? getNearbyUsers,
    required TResult orElse(),
  }) {
    if (getTipsList != null) {
      return getTipsList(this);
    }
    return orElse();
  }
}

abstract class GetTipsList implements RequestEvent {
  const factory GetTipsList() = _$GetTipsList;
}

/// @nodoc
abstract class $GetCurrentLocationCopyWith<$Res> {
  factory $GetCurrentLocationCopyWith(
          GetCurrentLocation value, $Res Function(GetCurrentLocation) then) =
      _$GetCurrentLocationCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCurrentLocationCopyWithImpl<$Res>
    extends _$RequestEventCopyWithImpl<$Res>
    implements $GetCurrentLocationCopyWith<$Res> {
  _$GetCurrentLocationCopyWithImpl(
      GetCurrentLocation _value, $Res Function(GetCurrentLocation) _then)
      : super(_value, (v) => _then(v as GetCurrentLocation));

  @override
  GetCurrentLocation get _value => super._value as GetCurrentLocation;
}

/// @nodoc

class _$GetCurrentLocation implements GetCurrentLocation {
  const _$GetCurrentLocation();

  @override
  String toString() {
    return 'RequestEvent.getCurrentLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetCurrentLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestData requestData) postRequest,
    required TResult Function() onProgressRequestList,
    required TResult Function(RequestData requestData) updateRequest,
    required TResult Function(RequestData requestData) confirmRequest,
    required TResult Function(RequestData requestData) completeRequest,
    required TResult Function() getRequestList,
    required TResult Function() getMyRequestList,
    required TResult Function() getHistoryRequestListEvent,
    required TResult Function() getTipsList,
    required TResult Function() getCurrentLocation,
    required TResult Function(String bloodGroup, UserLocation mylocation)
        getNearbyUsers,
  }) {
    return getCurrentLocation();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestData requestData)? postRequest,
    TResult Function()? onProgressRequestList,
    TResult Function(RequestData requestData)? updateRequest,
    TResult Function(RequestData requestData)? confirmRequest,
    TResult Function(RequestData requestData)? completeRequest,
    TResult Function()? getRequestList,
    TResult Function()? getMyRequestList,
    TResult Function()? getHistoryRequestListEvent,
    TResult Function()? getTipsList,
    TResult Function()? getCurrentLocation,
    TResult Function(String bloodGroup, UserLocation mylocation)?
        getNearbyUsers,
    required TResult orElse(),
  }) {
    if (getCurrentLocation != null) {
      return getCurrentLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostRequestEvent value) postRequest,
    required TResult Function(OnProgressRequestListEvent value)
        onProgressRequestList,
    required TResult Function(UpdateRequestEvent value) updateRequest,
    required TResult Function(ConfirmRequestEvent value) confirmRequest,
    required TResult Function(CompleteRequestEvent value) completeRequest,
    required TResult Function(GetRequestList value) getRequestList,
    required TResult Function(GetMyRequestList value) getMyRequestList,
    required TResult Function(GetHistoryRequestListEvent value)
        getHistoryRequestListEvent,
    required TResult Function(GetTipsList value) getTipsList,
    required TResult Function(GetCurrentLocation value) getCurrentLocation,
    required TResult Function(GetNearbyUsers value) getNearbyUsers,
  }) {
    return getCurrentLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostRequestEvent value)? postRequest,
    TResult Function(OnProgressRequestListEvent value)? onProgressRequestList,
    TResult Function(UpdateRequestEvent value)? updateRequest,
    TResult Function(ConfirmRequestEvent value)? confirmRequest,
    TResult Function(CompleteRequestEvent value)? completeRequest,
    TResult Function(GetRequestList value)? getRequestList,
    TResult Function(GetMyRequestList value)? getMyRequestList,
    TResult Function(GetHistoryRequestListEvent value)?
        getHistoryRequestListEvent,
    TResult Function(GetTipsList value)? getTipsList,
    TResult Function(GetCurrentLocation value)? getCurrentLocation,
    TResult Function(GetNearbyUsers value)? getNearbyUsers,
    required TResult orElse(),
  }) {
    if (getCurrentLocation != null) {
      return getCurrentLocation(this);
    }
    return orElse();
  }
}

abstract class GetCurrentLocation implements RequestEvent {
  const factory GetCurrentLocation() = _$GetCurrentLocation;
}

/// @nodoc
abstract class $GetNearbyUsersCopyWith<$Res> {
  factory $GetNearbyUsersCopyWith(
          GetNearbyUsers value, $Res Function(GetNearbyUsers) then) =
      _$GetNearbyUsersCopyWithImpl<$Res>;
  $Res call({String bloodGroup, UserLocation mylocation});
}

/// @nodoc
class _$GetNearbyUsersCopyWithImpl<$Res>
    extends _$RequestEventCopyWithImpl<$Res>
    implements $GetNearbyUsersCopyWith<$Res> {
  _$GetNearbyUsersCopyWithImpl(
      GetNearbyUsers _value, $Res Function(GetNearbyUsers) _then)
      : super(_value, (v) => _then(v as GetNearbyUsers));

  @override
  GetNearbyUsers get _value => super._value as GetNearbyUsers;

  @override
  $Res call({
    Object? bloodGroup = freezed,
    Object? mylocation = freezed,
  }) {
    return _then(GetNearbyUsers(
      bloodGroup == freezed
          ? _value.bloodGroup
          : bloodGroup // ignore: cast_nullable_to_non_nullable
              as String,
      mylocation == freezed
          ? _value.mylocation
          : mylocation // ignore: cast_nullable_to_non_nullable
              as UserLocation,
    ));
  }
}

/// @nodoc

class _$GetNearbyUsers implements GetNearbyUsers {
  const _$GetNearbyUsers(this.bloodGroup, this.mylocation);

  @override
  final String bloodGroup;
  @override
  final UserLocation mylocation;

  @override
  String toString() {
    return 'RequestEvent.getNearbyUsers(bloodGroup: $bloodGroup, mylocation: $mylocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetNearbyUsers &&
            (identical(other.bloodGroup, bloodGroup) ||
                const DeepCollectionEquality()
                    .equals(other.bloodGroup, bloodGroup)) &&
            (identical(other.mylocation, mylocation) ||
                const DeepCollectionEquality()
                    .equals(other.mylocation, mylocation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(bloodGroup) ^
      const DeepCollectionEquality().hash(mylocation);

  @JsonKey(ignore: true)
  @override
  $GetNearbyUsersCopyWith<GetNearbyUsers> get copyWith =>
      _$GetNearbyUsersCopyWithImpl<GetNearbyUsers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestData requestData) postRequest,
    required TResult Function() onProgressRequestList,
    required TResult Function(RequestData requestData) updateRequest,
    required TResult Function(RequestData requestData) confirmRequest,
    required TResult Function(RequestData requestData) completeRequest,
    required TResult Function() getRequestList,
    required TResult Function() getMyRequestList,
    required TResult Function() getHistoryRequestListEvent,
    required TResult Function() getTipsList,
    required TResult Function() getCurrentLocation,
    required TResult Function(String bloodGroup, UserLocation mylocation)
        getNearbyUsers,
  }) {
    return getNearbyUsers(bloodGroup, mylocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestData requestData)? postRequest,
    TResult Function()? onProgressRequestList,
    TResult Function(RequestData requestData)? updateRequest,
    TResult Function(RequestData requestData)? confirmRequest,
    TResult Function(RequestData requestData)? completeRequest,
    TResult Function()? getRequestList,
    TResult Function()? getMyRequestList,
    TResult Function()? getHistoryRequestListEvent,
    TResult Function()? getTipsList,
    TResult Function()? getCurrentLocation,
    TResult Function(String bloodGroup, UserLocation mylocation)?
        getNearbyUsers,
    required TResult orElse(),
  }) {
    if (getNearbyUsers != null) {
      return getNearbyUsers(bloodGroup, mylocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostRequestEvent value) postRequest,
    required TResult Function(OnProgressRequestListEvent value)
        onProgressRequestList,
    required TResult Function(UpdateRequestEvent value) updateRequest,
    required TResult Function(ConfirmRequestEvent value) confirmRequest,
    required TResult Function(CompleteRequestEvent value) completeRequest,
    required TResult Function(GetRequestList value) getRequestList,
    required TResult Function(GetMyRequestList value) getMyRequestList,
    required TResult Function(GetHistoryRequestListEvent value)
        getHistoryRequestListEvent,
    required TResult Function(GetTipsList value) getTipsList,
    required TResult Function(GetCurrentLocation value) getCurrentLocation,
    required TResult Function(GetNearbyUsers value) getNearbyUsers,
  }) {
    return getNearbyUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostRequestEvent value)? postRequest,
    TResult Function(OnProgressRequestListEvent value)? onProgressRequestList,
    TResult Function(UpdateRequestEvent value)? updateRequest,
    TResult Function(ConfirmRequestEvent value)? confirmRequest,
    TResult Function(CompleteRequestEvent value)? completeRequest,
    TResult Function(GetRequestList value)? getRequestList,
    TResult Function(GetMyRequestList value)? getMyRequestList,
    TResult Function(GetHistoryRequestListEvent value)?
        getHistoryRequestListEvent,
    TResult Function(GetTipsList value)? getTipsList,
    TResult Function(GetCurrentLocation value)? getCurrentLocation,
    TResult Function(GetNearbyUsers value)? getNearbyUsers,
    required TResult orElse(),
  }) {
    if (getNearbyUsers != null) {
      return getNearbyUsers(this);
    }
    return orElse();
  }
}

abstract class GetNearbyUsers implements RequestEvent {
  const factory GetNearbyUsers(String bloodGroup, UserLocation mylocation) =
      _$GetNearbyUsers;

  String get bloodGroup => throw _privateConstructorUsedError;
  UserLocation get mylocation => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetNearbyUsersCopyWith<GetNearbyUsers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RequestStateTearOff {
  const _$RequestStateTearOff();

  _RequestState call(
      String error,
      bool isSubmitting,
      bool isSubmitted,
      List<RequestData> requestList,
      List<TipsData> tips,
      List<RequestData> myRequest,
      List<RequestData> historyRequest,
      List<RequestData> onProgressRequestList,
      List<UserLocation> nearbyDonersList,
      UserLocation myLocation) {
    return _RequestState(
      error,
      isSubmitting,
      isSubmitted,
      requestList,
      tips,
      myRequest,
      historyRequest,
      onProgressRequestList,
      nearbyDonersList,
      myLocation,
    );
  }
}

/// @nodoc
const $RequestState = _$RequestStateTearOff();

/// @nodoc
mixin _$RequestState {
  String get error => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isSubmitted => throw _privateConstructorUsedError;
  List<RequestData> get requestList => throw _privateConstructorUsedError;
  List<TipsData> get tips => throw _privateConstructorUsedError;
  List<RequestData> get myRequest => throw _privateConstructorUsedError;
  List<RequestData> get historyRequest => throw _privateConstructorUsedError;
  List<RequestData> get onProgressRequestList =>
      throw _privateConstructorUsedError;
  List<UserLocation> get nearbyDonersList => throw _privateConstructorUsedError;
  UserLocation get myLocation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RequestStateCopyWith<RequestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestStateCopyWith<$Res> {
  factory $RequestStateCopyWith(
          RequestState value, $Res Function(RequestState) then) =
      _$RequestStateCopyWithImpl<$Res>;
  $Res call(
      {String error,
      bool isSubmitting,
      bool isSubmitted,
      List<RequestData> requestList,
      List<TipsData> tips,
      List<RequestData> myRequest,
      List<RequestData> historyRequest,
      List<RequestData> onProgressRequestList,
      List<UserLocation> nearbyDonersList,
      UserLocation myLocation});
}

/// @nodoc
class _$RequestStateCopyWithImpl<$Res> implements $RequestStateCopyWith<$Res> {
  _$RequestStateCopyWithImpl(this._value, this._then);

  final RequestState _value;
  // ignore: unused_field
  final $Res Function(RequestState) _then;

  @override
  $Res call({
    Object? error = freezed,
    Object? isSubmitting = freezed,
    Object? isSubmitted = freezed,
    Object? requestList = freezed,
    Object? tips = freezed,
    Object? myRequest = freezed,
    Object? historyRequest = freezed,
    Object? onProgressRequestList = freezed,
    Object? nearbyDonersList = freezed,
    Object? myLocation = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitted: isSubmitted == freezed
          ? _value.isSubmitted
          : isSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      requestList: requestList == freezed
          ? _value.requestList
          : requestList // ignore: cast_nullable_to_non_nullable
              as List<RequestData>,
      tips: tips == freezed
          ? _value.tips
          : tips // ignore: cast_nullable_to_non_nullable
              as List<TipsData>,
      myRequest: myRequest == freezed
          ? _value.myRequest
          : myRequest // ignore: cast_nullable_to_non_nullable
              as List<RequestData>,
      historyRequest: historyRequest == freezed
          ? _value.historyRequest
          : historyRequest // ignore: cast_nullable_to_non_nullable
              as List<RequestData>,
      onProgressRequestList: onProgressRequestList == freezed
          ? _value.onProgressRequestList
          : onProgressRequestList // ignore: cast_nullable_to_non_nullable
              as List<RequestData>,
      nearbyDonersList: nearbyDonersList == freezed
          ? _value.nearbyDonersList
          : nearbyDonersList // ignore: cast_nullable_to_non_nullable
              as List<UserLocation>,
      myLocation: myLocation == freezed
          ? _value.myLocation
          : myLocation // ignore: cast_nullable_to_non_nullable
              as UserLocation,
    ));
  }
}

/// @nodoc
abstract class _$RequestStateCopyWith<$Res>
    implements $RequestStateCopyWith<$Res> {
  factory _$RequestStateCopyWith(
          _RequestState value, $Res Function(_RequestState) then) =
      __$RequestStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String error,
      bool isSubmitting,
      bool isSubmitted,
      List<RequestData> requestList,
      List<TipsData> tips,
      List<RequestData> myRequest,
      List<RequestData> historyRequest,
      List<RequestData> onProgressRequestList,
      List<UserLocation> nearbyDonersList,
      UserLocation myLocation});
}

/// @nodoc
class __$RequestStateCopyWithImpl<$Res> extends _$RequestStateCopyWithImpl<$Res>
    implements _$RequestStateCopyWith<$Res> {
  __$RequestStateCopyWithImpl(
      _RequestState _value, $Res Function(_RequestState) _then)
      : super(_value, (v) => _then(v as _RequestState));

  @override
  _RequestState get _value => super._value as _RequestState;

  @override
  $Res call({
    Object? error = freezed,
    Object? isSubmitting = freezed,
    Object? isSubmitted = freezed,
    Object? requestList = freezed,
    Object? tips = freezed,
    Object? myRequest = freezed,
    Object? historyRequest = freezed,
    Object? onProgressRequestList = freezed,
    Object? nearbyDonersList = freezed,
    Object? myLocation = freezed,
  }) {
    return _then(_RequestState(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitted == freezed
          ? _value.isSubmitted
          : isSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      requestList == freezed
          ? _value.requestList
          : requestList // ignore: cast_nullable_to_non_nullable
              as List<RequestData>,
      tips == freezed
          ? _value.tips
          : tips // ignore: cast_nullable_to_non_nullable
              as List<TipsData>,
      myRequest == freezed
          ? _value.myRequest
          : myRequest // ignore: cast_nullable_to_non_nullable
              as List<RequestData>,
      historyRequest == freezed
          ? _value.historyRequest
          : historyRequest // ignore: cast_nullable_to_non_nullable
              as List<RequestData>,
      onProgressRequestList == freezed
          ? _value.onProgressRequestList
          : onProgressRequestList // ignore: cast_nullable_to_non_nullable
              as List<RequestData>,
      nearbyDonersList == freezed
          ? _value.nearbyDonersList
          : nearbyDonersList // ignore: cast_nullable_to_non_nullable
              as List<UserLocation>,
      myLocation == freezed
          ? _value.myLocation
          : myLocation // ignore: cast_nullable_to_non_nullable
              as UserLocation,
    ));
  }
}

/// @nodoc

class _$_RequestState implements _RequestState {
  const _$_RequestState(
      this.error,
      this.isSubmitting,
      this.isSubmitted,
      this.requestList,
      this.tips,
      this.myRequest,
      this.historyRequest,
      this.onProgressRequestList,
      this.nearbyDonersList,
      this.myLocation);

  @override
  final String error;
  @override
  final bool isSubmitting;
  @override
  final bool isSubmitted;
  @override
  final List<RequestData> requestList;
  @override
  final List<TipsData> tips;
  @override
  final List<RequestData> myRequest;
  @override
  final List<RequestData> historyRequest;
  @override
  final List<RequestData> onProgressRequestList;
  @override
  final List<UserLocation> nearbyDonersList;
  @override
  final UserLocation myLocation;

  @override
  String toString() {
    return 'RequestState(error: $error, isSubmitting: $isSubmitting, isSubmitted: $isSubmitted, requestList: $requestList, tips: $tips, myRequest: $myRequest, historyRequest: $historyRequest, onProgressRequestList: $onProgressRequestList, nearbyDonersList: $nearbyDonersList, myLocation: $myLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestState &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.isSubmitted, isSubmitted) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitted, isSubmitted)) &&
            (identical(other.requestList, requestList) ||
                const DeepCollectionEquality()
                    .equals(other.requestList, requestList)) &&
            (identical(other.tips, tips) ||
                const DeepCollectionEquality().equals(other.tips, tips)) &&
            (identical(other.myRequest, myRequest) ||
                const DeepCollectionEquality()
                    .equals(other.myRequest, myRequest)) &&
            (identical(other.historyRequest, historyRequest) ||
                const DeepCollectionEquality()
                    .equals(other.historyRequest, historyRequest)) &&
            (identical(other.onProgressRequestList, onProgressRequestList) ||
                const DeepCollectionEquality().equals(
                    other.onProgressRequestList, onProgressRequestList)) &&
            (identical(other.nearbyDonersList, nearbyDonersList) ||
                const DeepCollectionEquality()
                    .equals(other.nearbyDonersList, nearbyDonersList)) &&
            (identical(other.myLocation, myLocation) ||
                const DeepCollectionEquality()
                    .equals(other.myLocation, myLocation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSubmitted) ^
      const DeepCollectionEquality().hash(requestList) ^
      const DeepCollectionEquality().hash(tips) ^
      const DeepCollectionEquality().hash(myRequest) ^
      const DeepCollectionEquality().hash(historyRequest) ^
      const DeepCollectionEquality().hash(onProgressRequestList) ^
      const DeepCollectionEquality().hash(nearbyDonersList) ^
      const DeepCollectionEquality().hash(myLocation);

  @JsonKey(ignore: true)
  @override
  _$RequestStateCopyWith<_RequestState> get copyWith =>
      __$RequestStateCopyWithImpl<_RequestState>(this, _$identity);
}

abstract class _RequestState implements RequestState {
  const factory _RequestState(
      String error,
      bool isSubmitting,
      bool isSubmitted,
      List<RequestData> requestList,
      List<TipsData> tips,
      List<RequestData> myRequest,
      List<RequestData> historyRequest,
      List<RequestData> onProgressRequestList,
      List<UserLocation> nearbyDonersList,
      UserLocation myLocation) = _$_RequestState;

  @override
  String get error => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get isSubmitted => throw _privateConstructorUsedError;
  @override
  List<RequestData> get requestList => throw _privateConstructorUsedError;
  @override
  List<TipsData> get tips => throw _privateConstructorUsedError;
  @override
  List<RequestData> get myRequest => throw _privateConstructorUsedError;
  @override
  List<RequestData> get historyRequest => throw _privateConstructorUsedError;
  @override
  List<RequestData> get onProgressRequestList =>
      throw _privateConstructorUsedError;
  @override
  List<UserLocation> get nearbyDonersList => throw _privateConstructorUsedError;
  @override
  UserLocation get myLocation => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestStateCopyWith<_RequestState> get copyWith =>
      throw _privateConstructorUsedError;
}
