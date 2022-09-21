// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tips.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TipsObj _$_$TipsObjFromJson(Map<String, dynamic> json) {
  return _$TipsObj(
    TipsData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$TipsObjToJson(_$TipsObj instance) => <String, dynamic>{
      'data': instance.data.toJson(),
    };

_$TipsData _$_$TipsDataFromJson(Map<String, dynamic> json) {
  return _$TipsData(
    json['url'] as String,
    json['text'] as String,
  );
}

Map<String, dynamic> _$_$TipsDataToJson(_$TipsData instance) =>
    <String, dynamic>{
      'url': instance.imageurl,
      'text': instance.text,
    };

_$TipsList _$_$TipsListFromJson(Map<String, dynamic> json) {
  return _$TipsList(
    users: (json['users'] as List<dynamic>?)
        ?.map((e) => TipsObj.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$TipsListToJson(_$TipsList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('users', instance.users?.map((e) => e.toJson()).toList());
  return val;
}
