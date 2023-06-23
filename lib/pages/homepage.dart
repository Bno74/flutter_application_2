import "package:flutter/material.dart";
import 'LoginPage.dart';

class homepage extends StatelessWidget {
  final int days = 20;
  final String name = "samin";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("welcome to $days days of flutter by $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
