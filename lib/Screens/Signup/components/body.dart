import 'package:blood_365/Screens/Signup/components/custom_drop_down.dart';
import 'package:blood_365/Screens/dashboard/dashboard.dart';
import 'package:blood_365/Screens/request_screeen/request.dart';
import 'package:blood_365/application/auth/auth_bloc.dart';

import 'package:blood_365/domain/user/user_profile.dart';

import 'package:flutter/material.dart';
import 'package:blood_365/Screens/Login/login_screen.dart';
import 'package:blood_365/Screens/Signup/components/background.dart';
import 'package:blood_365/components/already_have_an_account_acheck.dart';
import 'package:blood_365/components/rounded_button.dart';
import 'package:blood_365/components/rounded_input_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:logger/logger.dart';

class Body extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController email =
        useTextEditingController(text: "@gmail.com");
    final TextEditingController password =
        useTextEditingController(text: "*******");
    final TextEditingController name = useTextEditingController(text: "Omar");
    final TextEditingController phoneNumber =
        useTextEditingController(text: "01236464646");
    final TextEditingController bloodgroup = useTextEditingController();
    final TextEditingController gender = useTextEditingController();
    final TextEditingController address =
        useTextEditingController(text: "Jalan Reko");
    final TextEditingController postCode =
        useTextEditingController(text: "43650");
    final TextEditingController stateController =
        useTextEditingController(text: "Selangor");
    final TextEditingController city = useTextEditingController(text: "Bangi");
    final TextEditingController lat = useTextEditingController();
    final TextEditingController long = useTextEditingController();
    final List<String> bloodgroups = [
      "O+",
      "O-",
      "A+",
      "A-",
      "AB+",
      "AB-",
      "B+",
      "B-"
    ];
    final List<String> genders = ["Male", "Female"];

    final _formKey = useMemoized(() => GlobalKey<FormState>());
    final AuthBloc authBloc = BlocProvider.of<AuthBloc>(context);
    final Size size = MediaQuery.of(context).size;
    return BlocListener<AuthBloc, AuthState>(
        listenWhen: (p, c) =>
            p.isLoading != c.isLoading ||
            p.error != c.error ||
            p.isAuthenticated != c.isAuthenticated ||
            (c.lat != p.lat && c.long != p.long),
        listener: (context, state) {
          if (state.error.isNotEmpty) {
            EasyLoading.showError(state.error);
          } else if (state.isLoading) {
            EasyLoading.show(status: 'loading...');
          } else if (state.isAuthenticated) {
            EasyLoading.dismiss();
            EasyLoading.showSuccess('Registration Successful!');
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Dashboard()),
            );
          }
          lat.text = state.lat.toString();
          long.text = state.long.toString();
        },
        child: Background(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "Blood365",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(height: size.height * 0.03),
                  SvgPicture.asset(
                    "assets/icons/signup.svg",
                    height: size.height * 0.35,
                  ),
                  RoundedInputField(
                    email,
                    hintText: "Your Email",
                    inputType: InputFieldType.email,
                  ),
                  RoundedInputField(
                    password,
                    inputType: InputFieldType.password,
                    hintText: "Your Password",
                  ),
                  RoundedInputField(
                    name,
                    hintText: "Name",
                  ),
                  RoundedInputField(
                    phoneNumber,
                    hintText: "Phone Number",
                    inputType: InputFieldType.phone,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomDropDown(
                        options: bloodgroups,
                        title: "Blood Group",
                        controller: bloodgroup,
                        colors: Colors.purple,
                      ),
                      CustomDropDown(
                        colors: Colors.purple,
                        options: genders,
                        title: "Gender",
                        controller: gender,
                      ),
                    ],
                  ),
                  RoundedInputField(
                    address,
                    hintText: "Address",
                  ),
                  RoundedInputField(
                    postCode,
                    hintText: "Post Code",
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: size.width * 0.4,
                        child: RoundedInputField(
                          stateController,
                          hintText: "State",
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.4,
                        child: RoundedInputField(
                          city,
                          hintText: "City",
                        ),
                      ),
                    ],
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
                      authBloc.add(const GetUserLocation());
                    },
                  ),
                  RoundedButton(
                    text: "SIGNUP",
                    press: () {
                      Logger().i('start ${lat.text}');
                      final GeoFirePoint myLocation = Geoflutterfire().point(
                          latitude: double.parse(lat.text),
                          longitude: double.parse(long.text));
                      Logger().i('end');

                      Logger().i(myLocation.latitude);
                      Logger().i(myLocation.longitude);

                      Logger().i(myLocation.toString());

                      if (_formKey.currentState!.validate()) {
                        authBloc.add(SignupEvent(
                            email.text,
                            password.text,
                            UserData(
                                name.text,
                                phoneNumber.text,
                                bloodgroup.text,
                                address.text,
                                postCode.text,
                                gender.text,
                                stateController.text,
                                city.text,
                                UserLocation(double.parse(lat.text),
                                    double.parse(long.text)))));
                      }
                    },
                  ),
                  SizedBox(height: size.height * 0.03),
                  AlreadyHaveAnAccountCheck(
                    login: false,
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginScreen();
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
