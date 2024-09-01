import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:test_project/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        darkTheme: ThemeData(primarySwatch: Colors.red),
        debugShowCheckedModeBanner: false,
        home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
  HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
        ),
        body: ResponsiveGridRow(children: [
          ResponsiveGridCol(
            lg: 12,
            child: Container(
              height: 100,
              color: Colors.orange,
            ),
          ),
          ResponsiveGridCol(
            xl: 4,
            lg: 6,
            md: 8,
            sm: 9,
            xs: 12,
            child: Container(
              height: 100,
              color: Colors.green,
            ),
          ),
        ]));
  }
}
