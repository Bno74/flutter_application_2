// ignore_for_file: prefer_const_constructors, sort_child_properties_last, use_key_in_widget_constructors, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/utils/routs.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();
  
  
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Navigator.pushNamed(context, MyRout.homeRout);
      await Future.delayed(Duration(seconds: 3));
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "asset/image/login_image.png",
                fit: BoxFit.cover,
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
              
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 32.0,
                ),
              ),
          
              

              
                
              
          
            
                
              TextFormField(
                  decoration: InputDecoration(
                      hintText: "enter username", 
                      labelText: "username"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "username cannot be empty";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  }),
              TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "enter passward",
                    labelText: " passward",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "passward cannot be empty";
                    } else if (value.length < 6) {
                      return "passward length should be atleast 6";
                    }
                    return null;
                  }),
              SizedBox(
                height: 10,
              ),
              Material(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(
                  changeButton ? 50 : 8),
                child: InkWell(
                  onTap: () => moveToHome(context),

                  child: AnimatedContainer(
                    duration: Duration(seconds: 6 ),
                    
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
                  

                    // shape: changeButton
                    //?BoxShape.circle
                    //:BoxShape.rectangle,
                  ),
                
                  // ElevatedButton(
                  // child: Text("login"),
                  // style: TextButton.styleFrom(minimumSize: Size(150, 30)),
                  // onPressed: () {
                  //  Navigator.pushNamed(context, MyRout.homeRout);
                  // },
                  //),
                ),
              ),
            ],
          ),
        ),
      ),
          
          
      );
      
    
    
  }
}
