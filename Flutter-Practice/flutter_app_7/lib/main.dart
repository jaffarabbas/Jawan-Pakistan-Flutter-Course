// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_app_7/pages/dashboard.dart';
import 'package:flutter_app_7/pages/home_page.dart';
import 'package:flutter_app_7/pages/splash_screen.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}