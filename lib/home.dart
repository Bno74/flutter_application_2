import "package:flutter/material.dart";
import 'home.dart';

class home extends StatelessWidget {
  final int days = 30;
  final String name = "samin";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("hello $days world $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
