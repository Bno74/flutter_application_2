// ignore_for_file: prefer_const_constructors, deprecated_member_use

import "package:flutter/material.dart";
import 'package:flutter_application_2/pages/utils/routs.dart';
import 'package:flutter_application_2/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';
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
      theme: MyTheme.lightTheme(context),
        
        
      
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => LoginPage(),
        MyRout.homeRout: (context) => HomePage(),
        MyRout.loginRout: (context) => LoginPage()
      },
    );
    
  }
}
