part of 'request_bloc.dart';

@freezed
class RequestState with _$RequestState {
  const factory RequestState(
      String error,
      bool isSubmitting,
      bool isSubmitted,
      List<RequestData> requestList,
      List<TipsData> tips,
      List<RequestData> myRequest,
      List<RequestData> historyRequest,
      List<RequestData> onProgressRequestList,
      List<UserLocation> nearbyDonersList,
      UserLocation myLocation) = _RequestState;
  factory RequestState.initial() => const RequestState(
      "", false, false, [], [], [], [], [], [], UserLocation(0, 0));
}
