import 'dart:ui';

import 'package:blood_365/Screens/dashboard/dashboard.dart';
import 'package:blood_365/Screens/dashboard/pending_tile.dart';

import 'package:blood_365/application/request/request_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class UpcomingDonation extends StatelessWidget {
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
          if (state.isSubmitted) {
            Navigator.pop(context);
            EasyLoading.showSuccess('Successfully Accepted!');
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Dashboard()),
            );
          }

          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                  backgroundColor: Colors.blue[900],
                  title: const Text("Upcoming donations")),
              backgroundColor: Colors.grey.shade100,
              body: SingleChildScrollView(
                padding: const EdgeInsets.all(0.0),
                child: SafeArea(
                  child: Column(children: <Widget>[
                    SizedBox(
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: state.onProgressRequestList.length,
                        itemBuilder: (context, index) => PendingTile(
                          requestData: state.onProgressRequestList[index],
                        ),
                      ),
                    ),
                  ]),
                ),
              ));
        });
  }
}
