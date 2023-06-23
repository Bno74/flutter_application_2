import 'package:flutter/material.dart';

import 'utils/routs.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(
          children: [
            Image.asset(
              "asset/image/login_image.png",
              fit: BoxFit.cover,
              height: 350,
            ),
            const SizedBox(
              height: 20,
              child: Text("login"),
            ),
            const Text(
              "welcome",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 40,
            ),
            const TextField(
              decoration: InputDecoration(
                  hintText: "EnterUsername", labelText: "username"),
            ),
            const TextField(
                decoration: InputDecoration(
              hintText: "Enter passward",
              labelText: "passward",
            )),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text("login"),
              style: TextButton.styleFrom(
                minimumSize: Size(100, 40),
              ),
              onPressed: () {
                Navigator.pushNamed(context, MyRout.homeRout);
              },
            ),
          ],
        )));
  }
}
