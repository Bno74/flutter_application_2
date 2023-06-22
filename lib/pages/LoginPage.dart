import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        Image.asset(
          "asset/image/login_image.png",
          fit: BoxFit.cover,
          
        ),
        const SizedBox(
          height: 0,
          child: Text("login"),
        ),
        
        
         const Text(
          "welcome",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold ,
            color: Colors.black
          ),
          
        ),
        const SizedBox(
          height: 0,
        ),
        const TextField(
          decoration: InputDecoration(
            hintText: "EnterUsername",
            labelText: "username"
          ),
        ),
        const TextField(
          decoration : InputDecoration(
            hintText: "Enter passward",
            labelText: "passward",


          )
        ),
       const SizedBox(
          height: 0,
        ),
        ElevatedButton( child: Text("login"),
        style: TextButton.styleFrom(),
        onPressed: () {},
          
        ),
        
      ],
    ));
  }
}
