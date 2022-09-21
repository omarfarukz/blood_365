import 'package:blood_365/domain/core/failure.dart';

import 'package:blood_365/domain/request_blood/request.dart';
import 'package:blood_365/domain/tips/tips.dart';
import 'package:blood_365/domain/user/user_profile.dart';
import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';

abstract class IRequestProvider {
  RequestData get request;
  set request(RequestData request);

  Future<Either<Failure, Unit>> postRequestData(RequestData request);
  Future<Either<Failure, List<RequestData>>> getPendingRequest(
      String bloodGroup, UserLocation myLocation);
  Future<Either<Failure, List<TipsData>>> getTipsList();
  Future<Either<Failure, List<RequestData>>> getUpcomingRequest();
  Future<Either<Failure, Unit>> updateRequestData(RequestData request);
  Future<Either<Failure, Unit>> confirmRequestData(RequestData request);
  Future<Either<Failure, Unit>> completeRequestData(RequestData request);
  Future<Either<Failure, List<RequestData>>> getMyRequestList();
  Future<Either<Failure, List<RequestData>>> getHistoryRequestList();
  Future<Either<Failure, Position>> getCurrentPosition();
  Future<Either<Failure, List<UserLocation>>> getNearbyDoners(
      String bloodGroup, UserLocation mylocation);
}
