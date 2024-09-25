import 'package:flutter/material.dart';
import 'package:test_project/practice_code/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter App",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomePageUI();
  }
}

class MyHomePageUI extends State<MyHomePage> {
  Map<String, double> FormValue = {"Num1": 0, "Num2": 0, "Num3": 0};
  double SUM = 0;

  @override
  Widget build(BuildContext context) {
    MyInputOnChange(InputKey, InputValue) {
      setState(() {
        FormValue.update(InputKey, (value) => double.parse(InputValue));
      });
    }

    AddAllNumber() {
      setState(() {
        SUM = FormValue['Num1']! + FormValue['Num2']!;
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Add'),
      ),
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(SUM.toString()),
            TextFormField(
              onChanged: (value) {
                MyInputOnChange("Num1", value);
              },
              decoration: AppInputStyle("First Number "),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              onChanged: (value) {
                MyInputOnChange("Num2", value);
              },
              decoration: AppInputStyle("Second Number "),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: AppButtonStyle(),
                child: Text('Add'),
                onPressed: () {
                  AddAllNumber();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
