import 'package:flutter/material.dart';
import 'package:test_project/screen/onboarding/emailVerificationScreen.dart';
import 'package:test_project/screen/onboarding/logginScreen.dart';
import 'package:test_project/screen/onboarding/pinVerificationScreen.dart';
import 'package:test_project/screen/onboarding/registrationScreen.dart';
import 'package:test_project/screen/onboarding/setPasswordScreen.dart';
import 'package:test_project/screen/onboarding/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Task Manager",
      initialRoute: '/',
      routes: {
        '/': (context) => splashScreen(),
        '/login': (context) => loginScreen(),
        '/registration': (context) => registrationScreen(),
        '/emailVerification': (context) => emailVerificationScreen(),
        '/pinVerification': (context) => pinVerificationScreen(),
        '/setPassword': (context) => setPasswordScreen(),
      },
    );
  }
}
