import 'package:blood_365/application/auth/auth_bloc.dart';
import 'package:blood_365/application/request/request_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class DonarProfiile extends StatelessWidget {
  const DonarProfiile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.2,
            ),
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return Container(
                  child: Text(
                    state.userData.name,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 24,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                );
              },
            ),
            BlocBuilder<RequestBloc, RequestState>(
              builder: (context, state) {
                return Container(
                  child: Text(
                    "${state.onProgressRequestList.length * 4} points",
                    style: TextStyle(color: Colors.grey[700], fontSize: 24),
                  ),
                );
              },
            ),
            SizedBox(
              height: size.height * 0.2,
            ),
            Container(
              height: size.height * 0.30,
              width: size.width * 0.9,
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BlocBuilder<RequestBloc, RequestState>(
                      builder: (context, rState) {
                        return BlocBuilder<AuthBloc, AuthState>(
                          builder: (context, aState) {
                            return Text(
                              "This is certified that ${aState.userData.name} is ${aState.userData.bloodGroup} blood donor in Blood 365. He has been saved ${rState.onProgressRequestList.length} life. He aslo accured ${rState.onProgressRequestList.length * 4}  Points from Blood 365. Blood365 appreciate him as a Super Hero. We wish him a healthy life",
                              style: TextStyle(
                                  color: Colors.grey[700], fontSize: 21),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            Image.asset(
              "assets/images/sign.jpeg",
              height: size.height * 0.20,
              width: size.width * 0.40,
            )
          ],
        ),
      ),
    );
  }
}
