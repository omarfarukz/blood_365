// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileObj _$_$UserProfileObjFromJson(Map<String, dynamic> json) {
  return _$UserProfileObj(
    UserData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$UserProfileObjToJson(_$UserProfileObj instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

_$UserData _$_$UserDataFromJson(Map<String, dynamic> json) {
  return _$UserData(
    json['name'] as String,
    json['phoneNumber'] as String,
    json['bloodGroup'] as String,
    json['address'] as String,
    json['postCode'] as String,
    json['gender'] as String,
    json['state'] as String,
    json['city'] as String,
    UserLocation.fromJson(json['location'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$UserDataToJson(_$UserData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'bloodGroup': instance.bloodGroup,
      'address': instance.address,
      'postCode': instance.postCode,
      'gender': instance.gender,
      'state': instance.state,
      'city': instance.city,
      'location': instance.location.toJson(),
    };

_$UserLocation _$_$UserLocationFromJson(Map<String, dynamic> json) {
  return _$UserLocation(
    (json['latitude'] as num).toDouble(),
    (json['longitude'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$UserLocationToJson(_$UserLocation instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$UserList _$_$UserListFromJson(Map<String, dynamic> json) {
  return _$UserList(
    users: (json['users'] as List<dynamic>?)
        ?.map((e) => UserProfileObj.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$UserListToJson(_$UserList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('users', instance.users?.map((e) => e.toJson()).toList());
  return val;
}
