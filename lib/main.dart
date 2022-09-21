import 'package:blood_365/Screens/Login/login_screen.dart';
import 'package:blood_365/Screens/dashboard/dashboard.dart';
import 'package:blood_365/Screens/dashboard/my_requests.dart';
import 'package:blood_365/Screens/healthTips/story.dart';
import 'package:blood_365/domain/auth/i_auth_provider.dart';
import 'package:blood_365/infrastructure/auth/firebase_auth_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'application/app_bloc_observer.dart';
import 'application/auth/auth_bloc.dart';
import 'application/request/request_bloc.dart';
import 'domain/request_blood/i_request_provider.dart';
import 'infrastructure/request_provider.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  AwesomeNotifications().initialize(null, [
    NotificationChannel(
        channelKey: 'Key1',
        channelName: 'request Channel',
        channelDescription: 'Requests',
        defaultColor: Color(0XFF9050DD),
        ledColor: Colors.white,
        playSound: true,
        enableLights: true,
        enableVibration: true)
  ]);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // Create the initialization Future outside of `build`:
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final Future<FirebaseApp> _initialization = Firebase.initializeApp();
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
          } else if (snapshot.connectionState == ConnectionState.done) {
            return MultiRepositoryProvider(
              providers: [
                RepositoryProvider<IAuthProvider>(
                  create: (context) =>
                      FirebaseAuthProvider(FirebaseAuth.instance),
                ),
                RepositoryProvider<IRequestProvider>(
                  create: (context) => RequestProvider(FirebaseAuth.instance),
                ),
              ],
              child: MultiBlocProvider(
                providers: [
                  BlocProvider<AuthBloc>(
                    create: (context) => AuthBloc(context.read<IAuthProvider>(),
                        context.read<IRequestProvider>())
                      ..add(const AuthEvent.authCheckRequested()),
                  ),
                  BlocProvider<RequestBloc>(
                      create: (context) => RequestBloc(
                          context.read<IRequestProvider>(),
                          context.read<IAuthProvider>()))
                ],
                child: MaterialApp(
                    debugShowCheckedModeBanner: false,
                    title: 'Blood 365',
                    builder: EasyLoading.init(),
                    home: BlocListener<AuthBloc, AuthState>(
                      listenWhen: (c, p) =>
                          c.isAuthenticated != p.isAuthenticated,
                      listener: (context, state) {
                        if (state.isAuthenticated) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Dashboard()),
                          );
                        }
                      },
                      child: Scaffold(
                        body: LoginScreen(),
                      ),
                    )),
              ),
            );
          }
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Blood 365',
            home: Scaffold(
              body: Center(
                child: CircularProgressIndicator(
                    // value: controller.value,
                    ),
              ),
            ),
          );
        });
  }
}
