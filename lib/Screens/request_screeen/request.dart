import 'package:blood_365/Screens/request_screeen/app_bar.dart';
import 'package:blood_365/Screens/request_screeen/content_card.dart';
import 'package:blood_365/domain/user/user_profile.dart';

import 'package:flutter/material.dart';

class Request extends StatelessWidget {
  final String bloodGroup;
  final UserLocation location;

  const Request(this.bloodGroup, this.location);

  @override
  Widget build(BuildContext context) {
    final EdgeInsets size = MediaQuery.of(context).padding;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          const NewAppBar(height: 210.0),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.only(top: size.top + 40.0),
              child: Column(
                children: <Widget>[
                  Expanded(child: ContentCard(bloodGroup, location)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
