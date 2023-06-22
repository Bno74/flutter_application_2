import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "asset/image/login_image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                TextFormField(
                    decoration: InputDecoration(
                        hintText: "enter username", labelText: "username")),
              ],
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Enter passward", labelText: "passward"),
            ),
          ],
        ));
  }
}