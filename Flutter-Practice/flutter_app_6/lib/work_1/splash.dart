// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app_6/work_1/navigation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => NavigationPage()),
        ),
      },
    );
    // Future.delayed(
    //   Duration(seconds: 2),
    //   () => {
    //     Navigator.pushReplacement(
    //       context,
    //       MaterialPageRoute(builder: (context) => NavigationPage()),
    //     ),
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          color: Colors.amber,
          height: double.infinity,
          width: double.infinity,
          child: CircularProgressIndicator(),
          // Text(
          //   'Splash here',
          //   style: TextStyle(color: Colors.blue, fontSize: 40),
          // ),
        ),
      ),
    );
  }
}
