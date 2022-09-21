part of 'request_bloc.dart';

@freezed
class RequestEvent with _$RequestEvent {
  const factory RequestEvent.postRequest(RequestData requestData) =
      PostRequestEvent;
  const factory RequestEvent.onProgressRequestList() =
      OnProgressRequestListEvent;
  const factory RequestEvent.updateRequest(RequestData requestData) =
      UpdateRequestEvent;
  const factory RequestEvent.confirmRequest(RequestData requestData) =
      ConfirmRequestEvent;
  const factory RequestEvent.completeRequest(RequestData requestData) =
      CompleteRequestEvent;
  const factory RequestEvent.getRequestList() = GetRequestList;
  const factory RequestEvent.getMyRequestList() = GetMyRequestList;
  const factory RequestEvent.getHistoryRequestListEvent() =
      GetHistoryRequestListEvent;
  const factory RequestEvent.getTipsList() = GetTipsList;
  const factory RequestEvent.getCurrentLocation() = GetCurrentLocation;
  const factory RequestEvent.getNearbyUsers(
      String bloodGroup, UserLocation mylocation) = GetNearbyUsers;
}
