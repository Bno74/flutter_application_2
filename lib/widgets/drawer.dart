// ignore_for_file: unused_local_variable, prefer_const_declarations, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://scontent.fdac41-1.fna.fbcdn.net/v/t39.30808-6/350011870_566422062309116_2566729722094716828_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=174925&_nc_eui2=AeFDAkRz-ZZkw28nnJdi1Ovu99vqjWAyp2H32-qNYDKnYYhppS7NGkwOcb7-g0f5SPnerzY68Pw6PvWuuo1L3oGv&_nc_ohc=HD9bYARrvPAAX__GDQP&_nc_ht=scontent.fdac41-1.fna&oh=00_AfBwVl3UF_VmlgOOXhy_TUMJRcZ3P7AlfampEhNxFiG7_w&oe=649EB23B";

    return Drawer(
      child: Container(
        color: Color.fromARGB(255, 183, 210, 252),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Color.fromARGB(255, 241, 82, 71)),
                accountName: Text("Samin"),
                accountEmail: Text("anhasami@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.purple,
                ),
                title: Text("Home",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.purple,
                    ))),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.purple,
              ),
              title: Text(
                "profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.purple,
              ),
              title: Text(
                "email",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
