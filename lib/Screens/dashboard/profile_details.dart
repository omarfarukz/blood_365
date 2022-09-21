import 'package:blood_365/Screens/Login/login_screen.dart';
import 'package:blood_365/Screens/dashboard/request_button.dart';
import 'package:blood_365/Screens/donarProfile/donar_profile.dart';
import 'package:blood_365/application/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileDetails extends StatelessWidget {
  final int? points;
  const ProfileDetails({Key? key, @required this.points}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthBloc authBloc = BlocProvider.of<AuthBloc>(context);
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DonarProfiile();
                              },
                            ),
                          );
                        },
                        child: Text(
                          state.userData.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white),
                        ),
                      ),
                      IconButton(
                          icon: const Icon(
                            Icons.logout,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            authBloc.add(SignedOut());
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return LoginScreen();
                                },
                              ),
                            );
                          })
                    ],
                  ),
                  Text(
                    "Phone: ${state.userData.phoneNumber}",
                    style: const TextStyle(fontSize: 18, color: Colors.white54),
                  ),
                  Text(
                    "Blood group: ${state.userData.bloodGroup}",
                    style: const TextStyle(fontSize: 18, color: Colors.white54),
                  ),
                  Text(
                    "Points: $points",
                    style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const RequestButton()
            ],
          ),
        );
      },
    );
  }
}
