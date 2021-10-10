// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.face_rounded),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                color: Color(0xFFFC5D2B),
                height: 200,
                width: 200,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Color(0xFFFC5D2B),
                height: 200,
                width: 200,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Color(0xFFFC5D2B),
                height: 200,
                width: 200,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Color(0xFFFC5D2B),
                height: 200,
                width: 200,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Color(0xFFFC5D2B),
                height: 200,
                width: 200,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Color(0xFFFC5D2B),
                height: 200,
                width: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}