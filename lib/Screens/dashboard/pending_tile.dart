import 'package:blood_365/Screens/requestDetails/request_details.dart';
import 'package:blood_365/Screens/requestDetails/request_dialogue.dart';
import 'package:blood_365/domain/request_blood/request.dart';
import 'package:flutter/material.dart';
import 'package:date_time_format/date_time_format.dart';

class PendingTile extends StatelessWidget {
  final RequestData requestData;
  const PendingTile({Key? key, required this.requestData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) => RequestDetails(
        //               requestData: requestData,
        //             )));
        showDialog(
            context: context,
            builder: (context) => RequestDialogue(context, requestData));
      },
      child: Container(
        height: 80,
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.white),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(requestData.patientName,
                    style: TextStyle(
                        color: Colors.blue[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
                Text(requestData.disease,
                    style: TextStyle(
                        color: Colors.blue[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  requestData.hospitalName,
                  style: const TextStyle(color: Colors.blueGrey),
                ),
                Text(
                    DateTime.fromMillisecondsSinceEpoch(requestData.dateTime)
                        .format('D, M j, H:i'),
                    style: const TextStyle(color: Colors.blueGrey)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
