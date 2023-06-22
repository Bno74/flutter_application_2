import "package:flutter/material.dart";
import 'package:flutter_application_2/pages/LoginPage.dart';
import 'pages/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
        "/": (context) =>LoginPage(),
        "/home": (context) => homepage(),
        "/login": (context) => LoginPage()


      },
    );
  }
}
