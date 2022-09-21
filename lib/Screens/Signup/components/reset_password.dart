import 'package:blood_365/Screens/Welcome/welcome_screen.dart';
import 'package:blood_365/application/auth/auth_bloc.dart';
import 'package:blood_365/components/rounded_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ResetPasswordScreen extends HookWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController email = useTextEditingController();
    final Size size = MediaQuery.of(context).size;
    return BlocListener<AuthBloc, AuthState>(
        listenWhen: (p, c) => p.resetLink != c.resetLink,
        listener: (context, state) {
          if (state.error.isNotEmpty) {
            EasyLoading.showError(state.error);
          } else if (state.isLoading) {
            EasyLoading.show(status: 'loading...');
          } else if (state.resetLink) {
            EasyLoading.dismiss();
            EasyLoading.showSuccess(
                'Link to reset password has been sent to your email address');
            BlocProvider.of<AuthBloc>(context).add(ResetState());
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WelcomeScreen()),
            );
          }
        },
        child: Scaffold(
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: size.width * 0.7,
                child: RoundedInputField(
                  email,
                  hintText: "Enter Email",
                ),
              ),
              SizedBox(
                height: size.height * 0.3,
              ),
              GestureDetector(
                onTap: () {
                  BlocProvider.of<AuthBloc>(context).add(ResetPassword(
                    email.text,
                  ));
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
