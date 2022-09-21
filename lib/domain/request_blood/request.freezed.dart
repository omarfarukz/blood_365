// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Request _$RequestFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'default':
      return RequestObj.fromJson(json);
    case 'data':
      return RequestData.fromJson(json);
    case 'list':
      return RequestList.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$RequestTearOff {
  const _$RequestTearOff();

  RequestObj call(RequestData data) {
    return RequestObj(
      data,
    );
  }

  RequestData data(
      @JsonKey(defaultValue: '') String requestSenderId,
      @JsonKey(defaultValue: '') String recieverId,
      @JsonKey(defaultValue: '') String status,
      @JsonKey(defaultValue: 0) int dateTime,
      @JsonKey(defaultValue: '') String hospitalName,
      @JsonKey(defaultValue: '') String ward,
      @JsonKey(defaultValue: '') String bed,
      @JsonKey(defaultValue: '') String patientName,
      @JsonKey(defaultValue: '') String disease,
      @JsonKey(defaultValue: '') String bloodGroup,
      @JsonKey(defaultValue: '') String gender,
      @JsonKey(defaultValue: "01967341234") String senderPhone,
      @JsonKey(defaultValue: "01912347438") String recieverPhone,
      @JsonKey(defaultValue: '') String requestType,
      @JsonKey(defaultValue: '') String requestId,
      @JsonKey(defaultValue: 0) int patientAge,
      UserLocation location) {
    return RequestData(
      requestSenderId,
      recieverId,
      status,
      dateTime,
      hospitalName,
      ward,
      bed,
      patientName,
      disease,
      bloodGroup,
      gender,
      senderPhone,
      recieverPhone,
      requestType,
      requestId,
      patientAge,
      location,
    );
  }

  RequestList list({List<RequestObj>? requests}) {
    return RequestList(
      requests: requests,
    );
  }

  Request fromJson(Map<String, Object> json) {
    return Request.fromJson(json);
  }
}

/// @nodoc
const $Request = _$RequestTearOff();

/// @nodoc
mixin _$Request {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(RequestData data) $default, {
    required TResult Function(
            @JsonKey(defaultValue: '') String requestSenderId,
            @JsonKey(defaultValue: '') String recieverId,
            @JsonKey(defaultValue: '') String status,
            @JsonKey(defaultValue: 0) int dateTime,
            @JsonKey(defaultValue: '') String hospitalName,
            @JsonKey(defaultValue: '') String ward,
            @JsonKey(defaultValue: '') String bed,
            @JsonKey(defaultValue: '') String patientName,
            @JsonKey(defaultValue: '') String disease,
            @JsonKey(defaultValue: '') String bloodGroup,
            @JsonKey(defaultValue: '') String gender,
            @JsonKey(defaultValue: "01967341234") String senderPhone,
            @JsonKey(defaultValue: "01912347438") String recieverPhone,
            @JsonKey(defaultValue: '') String requestType,
            @JsonKey(defaultValue: '') String requestId,
            @JsonKey(defaultValue: 0) int patientAge,
            UserLocation location)
        data,
    required TResult Function(List<RequestObj>? requests) list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(RequestData data)? $default, {
    TResult Function(
            @JsonKey(defaultValue: '') String requestSenderId,
            @JsonKey(defaultValue: '') String recieverId,
            @JsonKey(defaultValue: '') String status,
            @JsonKey(defaultValue: 0) int dateTime,
            @JsonKey(defaultValue: '') String hospitalName,
            @JsonKey(defaultValue: '') String ward,
            @JsonKey(defaultValue: '') String bed,
            @JsonKey(defaultValue: '') String patientName,
            @JsonKey(defaultValue: '') String disease,
            @JsonKey(defaultValue: '') String bloodGroup,
            @JsonKey(defaultValue: '') String gender,
            @JsonKey(defaultValue: "01967341234") String senderPhone,
            @JsonKey(defaultValue: "01912347438") String recieverPhone,
            @JsonKey(defaultValue: '') String requestType,
            @JsonKey(defaultValue: '') String requestId,
            @JsonKey(defaultValue: 0) int patientAge,
            UserLocation location)?
        data,
    TResult Function(List<RequestObj>? requests)? list,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RequestObj value) $default, {
    required TResult Function(RequestData value) data,
    required TResult Function(RequestList value) list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RequestObj value)? $default, {
    TResult Function(RequestData value)? data,
    TResult Function(RequestList value)? list,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCopyWith<$Res> {
  factory $RequestCopyWith(Request value, $Res Function(Request) then) =
      _$RequestCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestCopyWithImpl<$Res> implements $RequestCopyWith<$Res> {
  _$RequestCopyWithImpl(this._value, this._then);

  final Request _value;
  // ignore: unused_field
  final $Res Function(Request) _then;
}

/// @nodoc
abstract class $RequestObjCopyWith<$Res> {
  factory $RequestObjCopyWith(
          RequestObj value, $Res Function(RequestObj) then) =
      _$RequestObjCopyWithImpl<$Res>;
  $Res call({RequestData data});
}

/// @nodoc
class _$RequestObjCopyWithImpl<$Res> extends _$RequestCopyWithImpl<$Res>
    implements $RequestObjCopyWith<$Res> {
  _$RequestObjCopyWithImpl(RequestObj _value, $Res Function(RequestObj) _then)
      : super(_value, (v) => _then(v as RequestObj));

  @override
  RequestObj get _value => super._value as RequestObj;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(RequestObj(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RequestData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestObj implements RequestObj {
  const _$RequestObj(this.data);

  factory _$RequestObj.fromJson(Map<String, dynamic> json) =>
      _$_$RequestObjFromJson(json);

  @override
  final RequestData data;

  @override
  String toString() {
    return 'Request(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RequestObj &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $RequestObjCopyWith<RequestObj> get copyWith =>
      _$RequestObjCopyWithImpl<RequestObj>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(RequestData data) $default, {
    required TResult Function(
            @JsonKey(defaultValue: '') String requestSenderId,
            @JsonKey(defaultValue: '') String recieverId,
            @JsonKey(defaultValue: '') String status,
            @JsonKey(defaultValue: 0) int dateTime,
            @JsonKey(defaultValue: '') String hospitalName,
            @JsonKey(defaultValue: '') String ward,
            @JsonKey(defaultValue: '') String bed,
            @JsonKey(defaultValue: '') String patientName,
            @JsonKey(defaultValue: '') String disease,
            @JsonKey(defaultValue: '') String bloodGroup,
            @JsonKey(defaultValue: '') String gender,
            @JsonKey(defaultValue: "01967341234") String senderPhone,
            @JsonKey(defaultValue: "01912347438") String recieverPhone,
            @JsonKey(defaultValue: '') String requestType,
            @JsonKey(defaultValue: '') String requestId,
            @JsonKey(defaultValue: 0) int patientAge,
            UserLocation location)
        data,
    required TResult Function(List<RequestObj>? requests) list,
  }) {
    return $default(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(RequestData data)? $default, {
    TResult Function(
            @JsonKey(defaultValue: '') String requestSenderId,
            @JsonKey(defaultValue: '') String recieverId,
            @JsonKey(defaultValue: '') String status,
            @JsonKey(defaultValue: 0) int dateTime,
            @JsonKey(defaultValue: '') String hospitalName,
            @JsonKey(defaultValue: '') String ward,
            @JsonKey(defaultValue: '') String bed,
            @JsonKey(defaultValue: '') String patientName,
            @JsonKey(defaultValue: '') String disease,
            @JsonKey(defaultValue: '') String bloodGroup,
            @JsonKey(defaultValue: '') String gender,
            @JsonKey(defaultValue: "01967341234") String senderPhone,
            @JsonKey(defaultValue: "01912347438") String recieverPhone,
            @JsonKey(defaultValue: '') String requestType,
            @JsonKey(defaultValue: '') String requestId,
            @JsonKey(defaultValue: 0) int patientAge,
            UserLocation location)?
        data,
    TResult Function(List<RequestObj>? requests)? list,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RequestObj value) $default, {
    required TResult Function(RequestData value) data,
    required TResult Function(RequestList value) list,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RequestObj value)? $default, {
    TResult Function(RequestData value)? data,
    TResult Function(RequestList value)? list,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$RequestObjToJson(this)..['runtimeType'] = 'default';
  }
}

abstract class RequestObj implements Request {
  const factory RequestObj(RequestData data) = _$RequestObj;

  factory RequestObj.fromJson(Map<String, dynamic> json) =
      _$RequestObj.fromJson;

  RequestData get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestObjCopyWith<RequestObj> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestDataCopyWith<$Res> {
  factory $RequestDataCopyWith(
          RequestData value, $Res Function(RequestData) then) =
      _$RequestDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(defaultValue: '') String requestSenderId,
      @JsonKey(defaultValue: '') String recieverId,
      @JsonKey(defaultValue: '') String status,
      @JsonKey(defaultValue: 0) int dateTime,
      @JsonKey(defaultValue: '') String hospitalName,
      @JsonKey(defaultValue: '') String ward,
      @JsonKey(defaultValue: '') String bed,
      @JsonKey(defaultValue: '') String patientName,
      @JsonKey(defaultValue: '') String disease,
      @JsonKey(defaultValue: '') String bloodGroup,
      @JsonKey(defaultValue: '') String gender,
      @JsonKey(defaultValue: "01967341234") String senderPhone,
      @JsonKey(defaultValue: "01912347438") String recieverPhone,
      @JsonKey(defaultValue: '') String requestType,
      @JsonKey(defaultValue: '') String requestId,
      @JsonKey(defaultValue: 0) int patientAge,
      UserLocation location});
}

/// @nodoc
class _$RequestDataCopyWithImpl<$Res> extends _$RequestCopyWithImpl<$Res>
    implements $RequestDataCopyWith<$Res> {
  _$RequestDataCopyWithImpl(
      RequestData _value, $Res Function(RequestData) _then)
      : super(_value, (v) => _then(v as RequestData));

  @override
  RequestData get _value => super._value as RequestData;

  @override
  $Res call({
    Object? requestSenderId = freezed,
    Object? recieverId = freezed,
    Object? status = freezed,
    Object? dateTime = freezed,
    Object? hospitalName = freezed,
    Object? ward = freezed,
    Object? bed = freezed,
    Object? patientName = freezed,
    Object? disease = freezed,
    Object? bloodGroup = freezed,
    Object? gender = freezed,
    Object? senderPhone = freezed,
    Object? recieverPhone = freezed,
    Object? requestType = freezed,
    Object? requestId = freezed,
    Object? patientAge = freezed,
    Object? location = freezed,
  }) {
    return _then(RequestData(
      requestSenderId == freezed
          ? _value.requestSenderId
          : requestSenderId // ignore: cast_nullable_to_non_nullable
              as String,
      recieverId == freezed
          ? _value.recieverId
          : recieverId // ignore: cast_nullable_to_non_nullable
              as String,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as int,
      hospitalName == freezed
          ? _value.hospitalName
          : hospitalName // ignore: cast_nullable_to_non_nullable
              as String,
      ward == freezed
          ? _value.ward
          : ward // ignore: cast_nullable_to_non_nullable
              as String,
      bed == freezed
          ? _value.bed
          : bed // ignore: cast_nullable_to_non_nullable
              as String,
      patientName == freezed
          ? _value.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String,
      disease == freezed
          ? _value.disease
          : disease // ignore: cast_nullable_to_non_nullable
              as String,
      bloodGroup == freezed
          ? _value.bloodGroup
          : bloodGroup // ignore: cast_nullable_to_non_nullable
              as String,
      gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      senderPhone == freezed
          ? _value.senderPhone
          : senderPhone // ignore: cast_nullable_to_non_nullable
              as String,
      recieverPhone == freezed
          ? _value.recieverPhone
          : recieverPhone // ignore: cast_nullable_to_non_nullable
              as String,
      requestType == freezed
          ? _value.requestType
          : requestType // ignore: cast_nullable_to_non_nullable
              as String,
      requestId == freezed
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      patientAge == freezed
          ? _value.patientAge
          : patientAge // ignore: cast_nullable_to_non_nullable
              as int,
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as UserLocation,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestData implements RequestData {
  const _$RequestData(
      @JsonKey(defaultValue: '') this.requestSenderId,
      @JsonKey(defaultValue: '') this.recieverId,
      @JsonKey(defaultValue: '') this.status,
      @JsonKey(defaultValue: 0) this.dateTime,
      @JsonKey(defaultValue: '') this.hospitalName,
      @JsonKey(defaultValue: '') this.ward,
      @JsonKey(defaultValue: '') this.bed,
      @JsonKey(defaultValue: '') this.patientName,
      @JsonKey(defaultValue: '') this.disease,
      @JsonKey(defaultValue: '') this.bloodGroup,
      @JsonKey(defaultValue: '') this.gender,
      @JsonKey(defaultValue: "01967341234") this.senderPhone,
      @JsonKey(defaultValue: "01912347438") this.recieverPhone,
      @JsonKey(defaultValue: '') this.requestType,
      @JsonKey(defaultValue: '') this.requestId,
      @JsonKey(defaultValue: 0) this.patientAge,
      this.location);

  factory _$RequestData.fromJson(Map<String, dynamic> json) =>
      _$_$RequestDataFromJson(json);

  @override
  @JsonKey(defaultValue: '')
  final String requestSenderId;
  @override
  @JsonKey(defaultValue: '')
  final String recieverId;
  @override
  @JsonKey(defaultValue: '')
  final String status;
  @override
  @JsonKey(defaultValue: 0)
  final int dateTime;
  @override
  @JsonKey(defaultValue: '')
  final String hospitalName;
  @override
  @JsonKey(defaultValue: '')
  final String ward;
  @override
  @JsonKey(defaultValue: '')
  final String bed;
  @override
  @JsonKey(defaultValue: '')
  final String patientName;
  @override
  @JsonKey(defaultValue: '')
  final String disease;
  @override
  @JsonKey(defaultValue: '')
  final String bloodGroup;
  @override
  @JsonKey(defaultValue: '')
  final String gender;
  @override
  @JsonKey(defaultValue: "01967341234")
  final String senderPhone;
  @override
  @JsonKey(defaultValue: "01912347438")
  final String recieverPhone;
  @override
  @JsonKey(defaultValue: '')
  final String requestType;
  @override
  @JsonKey(defaultValue: '')
  final String requestId;
  @override
  @JsonKey(defaultValue: 0)
  final int patientAge;
  @override
  final UserLocation location;

  @override
  String toString() {
    return 'Request.data(requestSenderId: $requestSenderId, recieverId: $recieverId, status: $status, dateTime: $dateTime, hospitalName: $hospitalName, ward: $ward, bed: $bed, patientName: $patientName, disease: $disease, bloodGroup: $bloodGroup, gender: $gender, senderPhone: $senderPhone, recieverPhone: $recieverPhone, requestType: $requestType, requestId: $requestId, patientAge: $patientAge, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RequestData &&
            (identical(other.requestSenderId, requestSenderId) ||
                const DeepCollectionEquality()
                    .equals(other.requestSenderId, requestSenderId)) &&
            (identical(other.recieverId, recieverId) ||
                const DeepCollectionEquality()
                    .equals(other.recieverId, recieverId)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)) &&
            (identical(other.hospitalName, hospitalName) ||
                const DeepCollectionEquality()
                    .equals(other.hospitalName, hospitalName)) &&
            (identical(other.ward, ward) ||
                const DeepCollectionEquality().equals(other.ward, ward)) &&
            (identical(other.bed, bed) ||
                const DeepCollectionEquality().equals(other.bed, bed)) &&
            (identical(other.patientName, patientName) ||
                const DeepCollectionEquality()
                    .equals(other.patientName, patientName)) &&
            (identical(other.disease, disease) ||
                const DeepCollectionEquality()
                    .equals(other.disease, disease)) &&
            (identical(other.bloodGroup, bloodGroup) ||
                const DeepCollectionEquality()
                    .equals(other.bloodGroup, bloodGroup)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.senderPhone, senderPhone) ||
                const DeepCollectionEquality()
                    .equals(other.senderPhone, senderPhone)) &&
            (identical(other.recieverPhone, recieverPhone) ||
                const DeepCollectionEquality()
                    .equals(other.recieverPhone, recieverPhone)) &&
            (identical(other.requestType, requestType) ||
                const DeepCollectionEquality()
                    .equals(other.requestType, requestType)) &&
            (identical(other.requestId, requestId) ||
                const DeepCollectionEquality()
                    .equals(other.requestId, requestId)) &&
            (identical(other.patientAge, patientAge) ||
                const DeepCollectionEquality()
                    .equals(other.patientAge, patientAge)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(requestSenderId) ^
      const DeepCollectionEquality().hash(recieverId) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(dateTime) ^
      const DeepCollectionEquality().hash(hospitalName) ^
      const DeepCollectionEquality().hash(ward) ^
      const DeepCollectionEquality().hash(bed) ^
      const DeepCollectionEquality().hash(patientName) ^
      const DeepCollectionEquality().hash(disease) ^
      const DeepCollectionEquality().hash(bloodGroup) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(senderPhone) ^
      const DeepCollectionEquality().hash(recieverPhone) ^
      const DeepCollectionEquality().hash(requestType) ^
      const DeepCollectionEquality().hash(requestId) ^
      const DeepCollectionEquality().hash(patientAge) ^
      const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  $RequestDataCopyWith<RequestData> get copyWith =>
      _$RequestDataCopyWithImpl<RequestData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(RequestData data) $default, {
    required TResult Function(
            @JsonKey(defaultValue: '') String requestSenderId,
            @JsonKey(defaultValue: '') String recieverId,
            @JsonKey(defaultValue: '') String status,
            @JsonKey(defaultValue: 0) int dateTime,
            @JsonKey(defaultValue: '') String hospitalName,
            @JsonKey(defaultValue: '') String ward,
            @JsonKey(defaultValue: '') String bed,
            @JsonKey(defaultValue: '') String patientName,
            @JsonKey(defaultValue: '') String disease,
            @JsonKey(defaultValue: '') String bloodGroup,
            @JsonKey(defaultValue: '') String gender,
            @JsonKey(defaultValue: "01967341234") String senderPhone,
            @JsonKey(defaultValue: "01912347438") String recieverPhone,
            @JsonKey(defaultValue: '') String requestType,
            @JsonKey(defaultValue: '') String requestId,
            @JsonKey(defaultValue: 0) int patientAge,
            UserLocation location)
        data,
    required TResult Function(List<RequestObj>? requests) list,
  }) {
    return data(
        requestSenderId,
        recieverId,
        status,
        dateTime,
        hospitalName,
        ward,
        bed,
        patientName,
        disease,
        bloodGroup,
        gender,
        senderPhone,
        recieverPhone,
        requestType,
        requestId,
        patientAge,
        location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(RequestData data)? $default, {
    TResult Function(
            @JsonKey(defaultValue: '') String requestSenderId,
            @JsonKey(defaultValue: '') String recieverId,
            @JsonKey(defaultValue: '') String status,
            @JsonKey(defaultValue: 0) int dateTime,
            @JsonKey(defaultValue: '') String hospitalName,
            @JsonKey(defaultValue: '') String ward,
            @JsonKey(defaultValue: '') String bed,
            @JsonKey(defaultValue: '') String patientName,
            @JsonKey(defaultValue: '') String disease,
            @JsonKey(defaultValue: '') String bloodGroup,
            @JsonKey(defaultValue: '') String gender,
            @JsonKey(defaultValue: "01967341234") String senderPhone,
            @JsonKey(defaultValue: "01912347438") String recieverPhone,
            @JsonKey(defaultValue: '') String requestType,
            @JsonKey(defaultValue: '') String requestId,
            @JsonKey(defaultValue: 0) int patientAge,
            UserLocation location)?
        data,
    TResult Function(List<RequestObj>? requests)? list,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(
          requestSenderId,
          recieverId,
          status,
          dateTime,
          hospitalName,
          ward,
          bed,
          patientName,
          disease,
          bloodGroup,
          gender,
          senderPhone,
          recieverPhone,
          requestType,
          requestId,
          patientAge,
          location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RequestObj value) $default, {
    required TResult Function(RequestData value) data,
    required TResult Function(RequestList value) list,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RequestObj value)? $default, {
    TResult Function(RequestData value)? data,
    TResult Function(RequestList value)? list,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$RequestDataToJson(this)..['runtimeType'] = 'data';
  }
}

abstract class RequestData implements Request {
  const factory RequestData(
      @JsonKey(defaultValue: '') String requestSenderId,
      @JsonKey(defaultValue: '') String recieverId,
      @JsonKey(defaultValue: '') String status,
      @JsonKey(defaultValue: 0) int dateTime,
      @JsonKey(defaultValue: '') String hospitalName,
      @JsonKey(defaultValue: '') String ward,
      @JsonKey(defaultValue: '') String bed,
      @JsonKey(defaultValue: '') String patientName,
      @JsonKey(defaultValue: '') String disease,
      @JsonKey(defaultValue: '') String bloodGroup,
      @JsonKey(defaultValue: '') String gender,
      @JsonKey(defaultValue: "01967341234") String senderPhone,
      @JsonKey(defaultValue: "01912347438") String recieverPhone,
      @JsonKey(defaultValue: '') String requestType,
      @JsonKey(defaultValue: '') String requestId,
      @JsonKey(defaultValue: 0) int patientAge,
      UserLocation location) = _$RequestData;

  factory RequestData.fromJson(Map<String, dynamic> json) =
      _$RequestData.fromJson;

  @JsonKey(defaultValue: '')
  String get requestSenderId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get recieverId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get dateTime => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get hospitalName => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get ward => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get bed => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get patientName => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get disease => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get bloodGroup => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get gender => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "01967341234")
  String get senderPhone => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "01912347438")
  String get recieverPhone => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get requestType => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get requestId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get patientAge => throw _privateConstructorUsedError;
  UserLocation get location => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestDataCopyWith<RequestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestListCopyWith<$Res> {
  factory $RequestListCopyWith(
          RequestList value, $Res Function(RequestList) then) =
      _$RequestListCopyWithImpl<$Res>;
  $Res call({List<RequestObj>? requests});
}

/// @nodoc
class _$RequestListCopyWithImpl<$Res> extends _$RequestCopyWithImpl<$Res>
    implements $RequestListCopyWith<$Res> {
  _$RequestListCopyWithImpl(
      RequestList _value, $Res Function(RequestList) _then)
      : super(_value, (v) => _then(v as RequestList));

  @override
  RequestList get _value => super._value as RequestList;

  @override
  $Res call({
    Object? requests = freezed,
  }) {
    return _then(RequestList(
      requests: requests == freezed
          ? _value.requests
          : requests // ignore: cast_nullable_to_non_nullable
              as List<RequestObj>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestList implements RequestList {
  const _$RequestList({this.requests});

  factory _$RequestList.fromJson(Map<String, dynamic> json) =>
      _$_$RequestListFromJson(json);

  @override
  final List<RequestObj>? requests;

  @override
  String toString() {
    return 'Request.list(requests: $requests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RequestList &&
            (identical(other.requests, requests) ||
                const DeepCollectionEquality()
                    .equals(other.requests, requests)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(requests);

  @JsonKey(ignore: true)
  @override
  $RequestListCopyWith<RequestList> get copyWith =>
      _$RequestListCopyWithImpl<RequestList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(RequestData data) $default, {
    required TResult Function(
            @JsonKey(defaultValue: '') String requestSenderId,
            @JsonKey(defaultValue: '') String recieverId,
            @JsonKey(defaultValue: '') String status,
            @JsonKey(defaultValue: 0) int dateTime,
            @JsonKey(defaultValue: '') String hospitalName,
            @JsonKey(defaultValue: '') String ward,
            @JsonKey(defaultValue: '') String bed,
            @JsonKey(defaultValue: '') String patientName,
            @JsonKey(defaultValue: '') String disease,
            @JsonKey(defaultValue: '') String bloodGroup,
            @JsonKey(defaultValue: '') String gender,
            @JsonKey(defaultValue: "01967341234") String senderPhone,
            @JsonKey(defaultValue: "01912347438") String recieverPhone,
            @JsonKey(defaultValue: '') String requestType,
            @JsonKey(defaultValue: '') String requestId,
            @JsonKey(defaultValue: 0) int patientAge,
            UserLocation location)
        data,
    required TResult Function(List<RequestObj>? requests) list,
  }) {
    return list(requests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(RequestData data)? $default, {
    TResult Function(
            @JsonKey(defaultValue: '') String requestSenderId,
            @JsonKey(defaultValue: '') String recieverId,
            @JsonKey(defaultValue: '') String status,
            @JsonKey(defaultValue: 0) int dateTime,
            @JsonKey(defaultValue: '') String hospitalName,
            @JsonKey(defaultValue: '') String ward,
            @JsonKey(defaultValue: '') String bed,
            @JsonKey(defaultValue: '') String patientName,
            @JsonKey(defaultValue: '') String disease,
            @JsonKey(defaultValue: '') String bloodGroup,
            @JsonKey(defaultValue: '') String gender,
            @JsonKey(defaultValue: "01967341234") String senderPhone,
            @JsonKey(defaultValue: "01912347438") String recieverPhone,
            @JsonKey(defaultValue: '') String requestType,
            @JsonKey(defaultValue: '') String requestId,
            @JsonKey(defaultValue: 0) int patientAge,
            UserLocation location)?
        data,
    TResult Function(List<RequestObj>? requests)? list,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(requests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RequestObj value) $default, {
    required TResult Function(RequestData value) data,
    required TResult Function(RequestList value) list,
  }) {
    return list(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RequestObj value)? $default, {
    TResult Function(RequestData value)? data,
    TResult Function(RequestList value)? list,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$RequestListToJson(this)..['runtimeType'] = 'list';
  }
}

abstract class RequestList implements Request {
  const factory RequestList({List<RequestObj>? requests}) = _$RequestList;

  factory RequestList.fromJson(Map<String, dynamic> json) =
      _$RequestList.fromJson;

  List<RequestObj>? get requests => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestListCopyWith<RequestList> get copyWith =>
      throw _privateConstructorUsedError;
}
