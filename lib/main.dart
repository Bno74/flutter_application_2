import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  int days = 30;
  String name = "samin";
  bool isMale = true;



  Widget build(BuildContext context) {
    return MaterialApp(
      home: home(),
    );
  }
}
