// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_app_9/pages/login_page.dart';
import 'package:flutter_app_9/pages/register_page.dart';

class AuthSelecter extends StatefulWidget {
  AuthSelecter({Key? key}) : super(key: key);

  @override
  _AuthSelecterState createState() => _AuthSelecterState();
}

class _AuthSelecterState extends State<AuthSelecter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Flutter CRUD App",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.only(top:20,bottom: 10),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterPage(),
                      ),
                    );
                  },
                  child:
                      Text("Register", style: TextStyle(color: Colors.white))),
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: Text("Login", style: TextStyle(color: Colors.white))),
            ),
          ],
        ),
      ),
    );
  }
}