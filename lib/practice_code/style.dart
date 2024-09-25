import 'dart:ui';
import 'package:flutter/material.dart';

InputDecoration AppInputStyle(label) {
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    fillColor: Color.fromARGB(255, 214, 238, 240),
    filled: true,
    border: OutlineInputBorder(),
    labelText: label,
  );
}

TextStyle HeadTextStyle() {
  return TextStyle(fontSize: 28, fontWeight: FontWeight.w800);
}

ButtonStyle AppButtonStyle() {
  return ElevatedButton.styleFrom(
      padding: EdgeInsets.all(22),
      backgroundColor: Colors.green,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4))));
}
