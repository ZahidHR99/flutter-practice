import 'package:flutter/material.dart';
import 'package:test_project/style.dart';

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
  int countNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add'),
      ),
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Sum = 0"),
            TextFormField(
              decoration: AppInputStyle("First Number "),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
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
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
