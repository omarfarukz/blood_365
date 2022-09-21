import 'package:flutter/material.dart';

import '../../../constants.dart';

class CustomDropDown extends StatefulWidget {
  final List<String>? options;
  final String? title;
  final Color? colors;
  final TextEditingController? controller;
  const CustomDropDown(
      {Key? key, this.options, this.title, this.colors, this.controller})
      : super(key: key);

  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            color: kPrimaryLightColor,
            // border: Border.all(color: Colors.purple[100]),
            borderRadius: BorderRadius.circular(25)),
        child: DropdownButton<String>(
          hint: Text(
            widget.controller!.value == TextEditingValue.empty
                ? widget.title!
                : widget.controller!.text,
          ),
          style: Theme.of(context).primaryTextTheme.caption,
          underline: const SizedBox.shrink(),
          icon: Icon(Icons.arrow_drop_down, color: widget.colors),
          items: widget.options!.map((String value) {
            return DropdownMenuItem(
              value: value,
              child: Row(
                children: <Widget>[
                  Text(
                    value,
                    style: const TextStyle(color: Colors.black),
                  ),
                  const Icon(
                    Icons.arrow_drop_down,
                    size: 25,
                    color: Colors.black,
                  )
                ],
              ),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              widget.controller!.text = value!;
            });
          },
        ));
  }
}
