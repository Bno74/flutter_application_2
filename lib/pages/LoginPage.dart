// ignore_for_file: prefer_const_constructors, sort_child_properties_last, use_key_in_widget_constructors
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/LoginPage.dart';
import 'package:flutter_application_2/pages/utils/routs.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        Image.asset(
          "asset/image/login_image.png",
        ),
        SizedBox(
          height: 0,
        ),
        Text(
          "welcome $name",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 0,
        ),
        TextFormField(
            decoration: InputDecoration(
                hintText: "enter username", labelText: "username"),
            onChanged: (value) {
              name = value;
              setState(() {});
            }),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: "passward",
            labelText: "enter passward",
          ),
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () async {
            setState(() {
              changeButton = true;
            });
            Navigator.pushNamed(context, MyRout.homeRout);
            await Future.delayed(Duration(seconds: 0));
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 0),
            width: changeButton ? 50 : 150,
            height: 50,
            alignment: Alignment.center,
            child: changeButton
                ? Icon(
                    Icons.done,
                    color: Colors.white,
                  )
                : Text(
                    "login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                // shape: changeButton
                //?BoxShape.circle
                //:BoxShape.rectangle,
                borderRadius: BorderRadius.circular(changeButton ? 20 : 8)),
          ),
          // ElevatedButton(
          // child: Text("login"),
          // style: TextButton.styleFrom(minimumSize: Size(150, 30)),
          // onPressed: () {
          //  Navigator.pushNamed(context, MyRout.homeRout);
          // },
          //),
        ),
      ],
    ));
  }
}
