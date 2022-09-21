import 'dart:ui';

import 'package:blood_365/Screens/Signup/components/custom_drop_down.dart';
import 'package:blood_365/Screens/mapScreen/map_screen.dart';
import 'package:blood_365/Screens/request_screeen/request.dart';
import 'package:blood_365/application/request/request_bloc.dart';
import 'package:blood_365/components/rounded_button.dart';
import 'package:blood_365/components/rounded_input_field.dart';
import 'package:blood_365/domain/user/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SelectType extends HookWidget {
  const SelectType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final List<String> bloodGroups = [
      "O+",
      "O-",
      "A+",
      "A-",
      "AB+",
      "AB-",
      "B+",
      "B-"
    ];
    final TextEditingController type = useTextEditingController();
    final TextEditingController lat = useTextEditingController();
    final TextEditingController long = useTextEditingController();

    return BlocListener<RequestBloc, RequestState>(
        listenWhen: (previous, current) =>
            previous.myLocation != current.myLocation ||
            previous.nearbyDonersList != current.nearbyDonersList,
        listener: (context, state) {
          if (state.nearbyDonersList.isNotEmpty) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MapScreen(
                      type.text,
                      UserLocation(
                          double.parse(lat.text), double.parse(long.text)),
                      state.nearbyDonersList)),
            );
          }
          lat.text = state.myLocation.latitude.toString();
          long.text = state.myLocation.longitude.toString();
        },
        child: Scaffold(
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomDropDown(
                colors: Colors.blue[900],
                options: bloodGroups,
                title: "Blood",
                controller: type,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: size.width * 0.4,
                    child: RoundedInputField(
                      lat,
                      hintText: "lat",
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.4,
                    child: RoundedInputField(
                      long,
                      hintText: "long",
                    ),
                  ),
                ],
              ),
              RoundedButton(
                text: "Load Geo Location",
                press: () {
                  BlocProvider.of<RequestBloc>(context)
                      .add(const GetCurrentLocation());
                },
              ),
              SizedBox(
                height: size.height * 0.3,
              ),
              GestureDetector(
                onTap: () {
                  BlocProvider.of<RequestBloc>(context).add(GetNearbyUsers(
                      type.text,
                      UserLocation(
                          double.parse(lat.text), double.parse(long.text))));
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue[900]),
                  height: size.height * 0.05,
                  width: size.width * 0.25,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Submit',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ), //Row
                  ), //Pad
                ),
              ),
            ],
          )),
        ));
  }
}
