import "package:flutter/material.dart";
import 'package:flutter_application_2/pages/utils/routs.dart';
import 'pages/homepage.dart';
import 'pages/LoginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
        "/": (context) => LoginPage(),
        MyRout.homeRout: (context) => homepage(),
        MyRout.loginRout: (context) => LoginPage()
      },
    );
  }
}
