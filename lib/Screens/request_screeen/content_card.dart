import 'package:blood_365/Screens/request_screeen/request_form.dart';
import 'package:blood_365/domain/user/user_profile.dart';

import 'package:flutter/material.dart';

class ContentCard extends StatelessWidget {
  final String bloodGroup;
  final UserLocation location;

  const ContentCard(this.bloodGroup, this.location);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.all(8.0),
      child: DefaultTabController(
        length: 3,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return Column(
              children: <Widget>[
                _buildContentContainer(viewportConstraints),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildContentContainer(BoxConstraints viewportConstraints) {
    return Expanded(
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: viewportConstraints.maxHeight - 48.0,
          ),
          child: IntrinsicHeight(
            child: _buildMulticityTab(),
          ),
        ),
      ),
    );
  }

  Widget _buildMulticityTab() {
    return Column(
      children: <Widget>[
        RequestForm(bloodGroup, location), //TODO: Add MultiCity input
      ],
    );
  }
}
