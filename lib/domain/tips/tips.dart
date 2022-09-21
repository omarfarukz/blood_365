import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tips.freezed.dart';
part 'tips.g.dart';

@freezed
class Tips with _$Tips {
  const factory Tips(TipsData data) = TipsObj;

  const factory Tips.data(@JsonKey(name: "url") String imageurl, String text) =
      TipsData;
  factory Tips.empty() => const TipsObj(TipsData('', ''));
  const factory Tips.list({@required List<TipsObj>? users}) = TipsList;
  factory Tips.fromJson(Map<String, dynamic> json) => _$TipsFromJson(json);
}
