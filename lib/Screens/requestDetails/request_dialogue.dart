import 'package:blood_365/Screens/mapScreen/map_screen.dart';
import 'package:blood_365/application/request/request_bloc.dart';
import 'package:blood_365/components/rounded_button.dart';
import 'package:blood_365/domain/request_blood/request.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:date_time_format/date_time_format.dart';
import 'package:logger/logger.dart';
import 'package:url_launcher/url_launcher.dart';

class RequestDialogue extends StatelessWidget {
  final BuildContext parentContext;
  final RequestData requestData;

  const RequestDialogue(this.parentContext, this.requestData);
  Future<void> _makePhoneCall(String phoneNumber) async {
    final String url = "tel:$phoneNumber";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      Logger().e(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    final String userId = FirebaseAuth.instance.currentUser!.uid;
    final Size size = MediaQuery.of(context).size;
    final RequestBloc requestBloc = BlocProvider.of<RequestBloc>(parentContext);
    return Center(
      /** Card Widget **/
      child: Container(
        width: size.width * 0.75,
        // height: size.height * 0.70,

        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //SizedBox
            Container(
              height: size.height * 0.11,
              width: double.infinity,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Color.fromRGBO(159, 79, 79, 1)),
              child: Container(
                padding: EdgeInsets.symmetric(
                    vertical: size.height * 0.01,
                    horizontal: size.width * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Blood Request',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ), //Textstyle
                    ),
                    Text(
                      DateTime.fromMillisecondsSinceEpoch(requestData.dateTime)
                          .format('D, M j, H:i'),
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ), //Textstyle
                    ),
                  ],
                ),
              ),
            ), //Text

            Padding(
              padding: EdgeInsets.symmetric(vertical: size.height * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage(
                      "assets/images/img_avatar2.png",
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.04,
                  ),
                  Text(
                    requestData.patientName,
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            Container(
              width: double.infinity,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: const Text(
                "Patient Details",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name: ${requestData.patientName}",
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ), //Textstyle
                  ),
                  Text(
                    "Age: ${requestData.patientAge}",
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Health Issue: ${requestData.disease}",
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Requirement: ${requestData.requestType}",
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  if (requestData.status == "accepted" &&
                      requestData.requestSenderId == userId)
                    RoundedButton(
                      press: () => _makePhoneCall(requestData.recieverPhone),
                      text: "Call: ${requestData.recieverPhone}",
                    ),
                  if (requestData.status == "accepted" &&
                      requestData.recieverId == userId)
                    RoundedButton(
                      press: () => _makePhoneCall(requestData.senderPhone),
                      text: "Call: ${requestData.senderPhone}",
                    ),

                  // Text(
                  //   "Hospital Name: ${requestData.hospitalName} ",
                  //   style: const TextStyle(
                  //     fontSize: 15,
                  //     color: Colors.black,
                  //     fontWeight: FontWeight.w500,
                  //   ),
                  // ),
                ],
              ),
            ),

            //SizedBox

            SizedBox(height: size.height * 0.05), //SizedBox
            Container(
              width: size.width * 0.8,
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
              margin: EdgeInsets.symmetric(horizontal: size.width * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "Location Details: Bed: ${requestData.bed},ward: ${requestData.ward}\nHospital Name: ${requestData.hospitalName}"),
                  Center(
                    child: SizedBox(
                      width: size.width * 0.30,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => MapScreen(
                                    requestData.bloodGroup,
                                    requestData.location,
                                    [requestData.location],
                                    showButton: false,
                                  )));
                        },
                        color: const Color.fromRGBO(94, 151, 127, 1),
                        child: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            'View on map',
                            style: TextStyle(color: Colors.white),
                          ), //Row
                        ), //Padding
                      ), //RaisedButton
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: size.height * 0.05),
            if (requestData.status == "accepted" &&
                requestData.requestSenderId == userId)
              Padding(
                padding: EdgeInsets.symmetric(vertical: size.height * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(66, 107, 32, 1),
                          borderRadius: BorderRadius.circular(10)),
                      width: size.width * 0.30,
                      height: size.height * 0.05,
                      child: GestureDetector(
                        onTap: () {
                          requestBloc.add(ConfirmRequestEvent(requestData));
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Success',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ), //Row
                        ), //Padding
                      ), //RaisedButton
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(161, 34, 30, 1),
                          borderRadius: BorderRadius.circular(10)),
                      width: size.width * 0.30,
                      height: size.height * 0.05,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Failure',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ), //Row
                        ), //Padding
                      ), //RaisedButton
                    ),
                  ],
                ),
              ),
            //SizedBox
          ],
        ), //SizedBox
      ),
    ); //Card
  }
}
