// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mini_hackathon_jawan_pakistan/pages/login.dart';
import 'package:mini_hackathon_jawan_pakistan/widgits/theme.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        ),
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primarybackground,
      body: Center(
        child: Image.asset("assets/images/layout/logo_w.png"),
      ),
    );
  }
}