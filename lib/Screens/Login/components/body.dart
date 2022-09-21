import 'package:blood_365/Screens/dashboard/dashboard.dart';
import 'package:blood_365/application/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:blood_365/Screens/Login/components/background.dart';
import 'package:blood_365/Screens/Signup/signup_screen.dart';
import 'package:blood_365/components/already_have_an_account_acheck.dart';
import 'package:blood_365/components/rounded_button.dart';
import 'package:blood_365/components/rounded_input_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

class Body extends HookWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController email =
        useTextEditingController(text: "kabir@gmail.com");
    final TextEditingController password =
        useTextEditingController(text: "Kabir1234*");

    final _formKey = useMemoized(() => GlobalKey<FormState>());
    final AuthBloc authBloc = BlocProvider.of<AuthBloc>(context);
    final Size size = MediaQuery.of(context).size;
    return BlocListener<AuthBloc, AuthState>(
        listenWhen: (p, c) =>
            p.isSubmitting != c.isSubmitting ||
            p.error != c.error ||
            p.isAuthenticated != c.isAuthenticated,
        listener: (context, state) {
          if (state.error.isNotEmpty) {
            EasyLoading.showError(state.error);
          }
          if (state.isSubmitting) {
            EasyLoading.show(status: 'loading...');
          }
          if (state.isAuthenticated) {
            EasyLoading.showSuccess('Successfully Authenticated!');
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Dashboard()),
            );
          }
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
                    "assets/icons/login.svg",
                    height: size.height * 0.35,
                  ),
                  SizedBox(height: size.height * 0.03),
                  RoundedInputField(
                    email,
                    hintText: "Your Email",
                    inputType: InputFieldType.email,
                  ),
                  RoundedInputField(password,
                      inputType: InputFieldType.password,
                      hintText: "Your Password",
                      icon: Icons.lock),
                  RoundedButton(
                    text: "LOGIN",
                    press: () {
                      if (_formKey.currentState!.validate()) {
                        authBloc.add(LoginEvent(email.text, password.text));
                      }
                    },
                  ),
                  SizedBox(height: size.height * 0.03),
                  AlreadyHaveAnAccountCheck(
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SignUpScreen();
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
