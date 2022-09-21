import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:blood_365/Screens/dashboard/donation_history.dart';
import 'package:blood_365/Screens/dashboard/pending_page.dart';
import 'package:blood_365/Screens/dashboard/pending_pageview.dart';
import 'package:blood_365/Screens/dashboard/upcoming_donation.dart';
import 'package:blood_365/Screens/dashboard/my_requests.dart';
import 'package:blood_365/Screens/dashboard/pending_tile.dart';
import 'package:blood_365/Screens/dashboard/profile_details.dart';
import 'package:blood_365/Screens/dashboard/summary.dart';
import 'package:blood_365/Screens/healthTips/story.dart';
import 'package:blood_365/Screens/requestDetails/request_dialogue.dart';
import 'package:blood_365/application/request/request_bloc.dart';
import 'package:blood_365/domain/request_blood/request.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return BlocConsumer<RequestBloc, RequestState>(
        listenWhen: (p, c) =>
            p.isSubmitting != c.isSubmitting ||
            p.error != c.error ||
            p.isSubmitted != c.isSubmitted,
        listener: (context, state) {
          if (state.error.isNotEmpty) {
            EasyLoading.showError(state.error);
          }
          if (state.isSubmitting) {
            EasyLoading.show(status: 'loading...');
          }
          if (!state.isSubmitting && state.error.isEmpty) {
            EasyLoading.dismiss();
          }
          if (state.isSubmitted) {
            EasyLoading.showSuccess('Successfully Accepted!');
            BlocProvider.of<RequestBloc>(context)
              ..add(const GetRequestList())
              ..add(const OnProgressRequestListEvent());
          }
          if (state.onProgressRequestList.isNotEmpty) {
            final DateTime currentTime = DateTime.now();
            state.onProgressRequestList.forEach((element) {
              final DateTime requestTime =
                  DateTime.fromMillisecondsSinceEpoch(element.dateTime);
              final int minuteLeft =
                  currentTime.difference(requestTime).inMinutes;
              if (minuteLeft <= 60) {
                Notify(element);
                AwesomeNotifications()
                    .actionStream
                    .listen((receivedNotification) {
                  showDialog(
                      context: context,
                      builder: (context) => RequestDialogue(context, element));
                });
              }
            });
          }
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.blue[900],
            body: SafeArea(
              child: RefreshIndicator(
                onRefresh: () async {
                  BlocProvider.of<RequestBloc>(context)
                    ..add(const GetRequestList())
                    ..add(const GetTipsList())
                    ..add(const OnProgressRequestListEvent())
                    ..add(const GetMyRequestList())
                    ..add(const GetHistoryRequestListEvent());
                },
                child: ListView(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (state.requestList.isNotEmpty)
                            PendingPageView(state.requestList),
                          if (state.tips.isNotEmpty)
                            HealthTipsView(
                              tipsList: state.tips,
                            ),
                          const Divider(
                            color: Colors.blueAccent,
                            thickness: 1,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ProfileDetails(
                            points: state.historyRequest.length * 4,
                          ),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MyRequests()),
                                    );
                                  },
                                  child: SummaryTile(
                                    tittle: "My\nRequests",
                                    icon: Icons.bento_rounded,
                                    value: state.myRequest.length,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              UpcomingDonation()),
                                    );
                                  },
                                  child: SummaryTile(
                                      tittle: "Upcoming\nDonation",
                                      value: state.onProgressRequestList.length,
                                      icon: Icons.ac_unit),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DonationHistory()),
                                    );
                                  },
                                  child: SummaryTile(
                                      tittle: "Donation\nHistory",
                                      value: state.historyRequest.length,
                                      icon: Icons.access_alarm_sharp),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => PendingPage()),
                                    );
                                  },
                                  child: SummaryTile(
                                      tittle: "Pending\nRequest",
                                      value: state.requestList.length,
                                      icon: Icons.access_time),
                                )
                              ]),
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                        ],
                      ),
                      if (state.onProgressRequestList.isNotEmpty)
                        Container(
                          width: size.width * 1,
                          // height: size.height * 0.65,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(
                                    15,
                                  ),
                                  topRight: Radius.circular(15))),
                          padding: const EdgeInsets.all(0.0),
                          alignment: Alignment.center,
                          child: Column(children: <Widget>[
                            const Text("Upcoming Requests"),
                            SizedBox(
                              height: size.width * 0.80,
                              child: ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: state.onProgressRequestList.length,
                                itemBuilder: (context, index) => PendingTile(
                                  requestData:
                                      state.onProgressRequestList[index],
                                ),
                              ),
                            )
                          ]),
                        )
                    ]),
              ),
            ),
          );
        });
  }
}

void Notify(RequestData requestData) async {
  AwesomeNotifications().createNotification(
      content: NotificationContent(
          id: 1,
          channelKey: 'Key1',
          title: "You have a donation within 1 hour",
          body:
              "Location Details: Bed: ${requestData.bed},ward: ${requestData.ward}\nHospital Name: ${requestData.hospitalName}"));
}
