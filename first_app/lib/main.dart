import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void add(int num1, int num2) {
  num1 + num2;
}

void call() {
  add( 5,  4);
}

void main() {
  runApp(
     const MaterialApp(
      home: Scaffold(
        body: GradientContainer( Color.fromARGB(255, 127, 210, 248),
        Colors.lightBlue,
         Color.fromARGB(255, 64, 114, 239),
         Color.fromARGB(255, 40, 72, 255),
        Color.fromARGB(255, 19, 41, 168)),
      ),
    ),
  );     
}

