import 'dart:ui';

import 'package:blood_365/Screens/dashboard/pending_tile.dart';

import 'package:blood_365/application/request/request_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyRequests extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return BlocConsumer<RequestBloc, RequestState>(
        listenWhen: (p, c) =>
            p.isSubmitting != c.isSubmitting || p.error != c.error,
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                  backgroundColor: Colors.blue[900],
                  title: const Text("My Requests")),
              backgroundColor: Colors.grey.shade100,
              body: SingleChildScrollView(
                padding: const EdgeInsets.all(0.0),
                child: SafeArea(
                  child: Column(children: <Widget>[
                    SizedBox(
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: state.myRequest.length,
                        itemBuilder: (context, index) => PendingTile(
                          requestData: state.myRequest[index],
                        ),
                      ),
                    ),
                  ]),
                ),
              ));
        });
  }
}
