import 'package:flutter/material.dart';

class TypeableTextFormField extends StatelessWidget {
  final String? finalText;
  final InputDecoration? decoration;
  final TextEditingController controller;

  const TypeableTextFormField(this.controller,
      {Key? key, this.finalText, this.decoration})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: decoration,
      controller: controller,
    );
  }
}
