import 'package:blood_365/Screens/requestDetails/request_dialogue.dart';
import 'package:blood_365/application/request/request_bloc.dart';
import 'package:blood_365/domain/request_blood/request.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RequestPopup extends StatelessWidget {
  final RequestData requestData;
  const RequestPopup(this.requestData, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.all(15),
      elevation: 10,
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text(requestData.patientName),
            subtitle: Text(
                "Location Details: Bed: ${requestData.bed},ward: ${requestData.ward}\nHospital Name: ${requestData.hospitalName}"),
            leading: Icon(Icons.home),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                  onPressed: () => BlocProvider.of<RequestBloc>(context)
                      .add(UpdateRequestEvent(requestData)),
                  child: const Text('Accept')),
              FlatButton(
                  onPressed: () => {
                        showDialog(
                            context: context,
                            builder: (context) =>
                                RequestDialogue(context, requestData))
                      },
                  child: const Text('Details'))
            ],
          )
        ],
      ),
    );
  }
}
