import 'package:flutter/material.dart';
import 'package:test_project/style/style.dart';

class registrationScreen extends StatefulWidget {
  const registrationScreen({super.key});

  @override
  State<registrationScreen> createState() => _registrationScreenState();
}

class _registrationScreenState extends State<registrationScreen> {
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
              Text("Get Start With", style: Head1Text(colorDarkBlur)),
              SizedBox(height: 1),
              Text("Zahid HR", style: Head6Text(colorLightGray)),
              SizedBox(height: 20),
              TextFormField(
                decoration: AppInputDecoration("Email Address"),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: AppInputDecoration("First Name"),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: AppInputDecoration("Last Name"),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: AppInputDecoration("Mobile"),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: AppInputDecoration("Pasword"),
              ),
              SizedBox(height: 20),
              Container(
                child: ElevatedButton(
                  style: AppButtonStyle(),
                  child: SuccessButtonChild('Registration'),
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
