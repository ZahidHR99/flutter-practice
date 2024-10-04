import 'package:flutter/material.dart';
import 'package:test_project/style/style.dart';

class emailVerificationScreen extends StatefulWidget {
  const emailVerificationScreen({super.key});

  @override
  State<emailVerificationScreen> createState() =>
      _emailVerificationScreenState();
}

class _emailVerificationScreenState extends State<emailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        ScreenBackground(context),
        Container(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Your Email Address", style: Head1Text(colorDarkBlur)),
              SizedBox(height: 1),
              Text(
                  "A 6 digits verification pin will send to your email address",
                  style: Head6Text(colorLightGray)),
              SizedBox(height: 20),
              TextFormField(
                decoration: AppInputDecoration("Email Address"),
              ),
              Container(
                child: ElevatedButton(
                  style: AppButtonStyle(),
                  child: SuccessButtonChild('Next'),
                  onPressed: () {},
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
