import 'package:blood_365/Screens/request_screeen/reques_type_select.dart';
import 'package:blood_365/Screens/request_screeen/request.dart';
import 'package:flutter/material.dart';

class RequestButton extends StatelessWidget {
  const RequestButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SelectType()),
        );
      },
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 3),
            color: Colors.white10,
            borderRadius: BorderRadius.circular(15)),
        alignment: Alignment.center,
        child: const Text('Request\nBlood',
            style: TextStyle(fontSize: 16, color: Colors.white)),
      ),
    );
  }
}
