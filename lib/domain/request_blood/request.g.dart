// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestObj _$_$RequestObjFromJson(Map<String, dynamic> json) {
  return _$RequestObj(
    RequestData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$RequestObjToJson(_$RequestObj instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

_$RequestData _$_$RequestDataFromJson(Map<String, dynamic> json) {
  return _$RequestData(
    json['requestSenderId'] as String? ?? '',
    json['recieverId'] as String? ?? '',
    json['status'] as String? ?? '',
    json['dateTime'] as int? ?? 0,
    json['hospitalName'] as String? ?? '',
    json['ward'] as String? ?? '',
    json['bed'] as String? ?? '',
    json['patientName'] as String? ?? '',
    json['disease'] as String? ?? '',
    json['bloodGroup'] as String? ?? '',
    json['gender'] as String? ?? '',
    json['senderPhone'] as String? ?? '01967341234',
    json['recieverPhone'] as String? ?? '01912347438',
    json['requestType'] as String? ?? '',
    json['requestId'] as String? ?? '',
    json['patientAge'] as int? ?? 0,
    UserLocation.fromJson(json['location'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$RequestDataToJson(_$RequestData instance) =>
    <String, dynamic>{
      'requestSenderId': instance.requestSenderId,
      'recieverId': instance.recieverId,
      'status': instance.status,
      'dateTime': instance.dateTime,
      'hospitalName': instance.hospitalName,
      'ward': instance.ward,
      'bed': instance.bed,
      'patientName': instance.patientName,
      'disease': instance.disease,
      'bloodGroup': instance.bloodGroup,
      'gender': instance.gender,
      'senderPhone': instance.senderPhone,
      'recieverPhone': instance.recieverPhone,
      'requestType': instance.requestType,
      'requestId': instance.requestId,
      'patientAge': instance.patientAge,
      'location': instance.location.toJson(),
    };

_$RequestList _$_$RequestListFromJson(Map<String, dynamic> json) {
  return _$RequestList(
    requests: (json['requests'] as List<dynamic>?)
        ?.map((e) => RequestObj.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$RequestListToJson(_$RequestList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('requests', instance.requests?.map((e) => e.toJson()).toList());
  return val;
}
