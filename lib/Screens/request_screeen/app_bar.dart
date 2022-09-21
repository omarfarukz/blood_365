import 'package:flutter/material.dart';

class NewAppBar extends StatelessWidget {
  final double? height;

  const NewAppBar({Key? key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.blue[900],
          ),
          height: height,
        ),
        AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          title: const Text(
            "Request for Blood",
            style: TextStyle(
                fontFamily: 'NothingYouCouldDo', fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
