import 'package:blood_365/domain/user/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'request.freezed.dart';
part 'request.g.dart';

@freezed
abstract class Request with _$Request {
  const factory Request(RequestData data) = RequestObj;

  const factory Request.data(
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
      UserLocation location) = RequestData;

  const factory Request.list({@required List<RequestObj>? requests}) =
      RequestList;
  factory Request.fromJson(Map<String, dynamic> json) =>
      _$RequestFromJson(json);
}
