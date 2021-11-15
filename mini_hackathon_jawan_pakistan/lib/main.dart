// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_hackathon_jawan_pakistan/pages/about.dart';
import 'package:mini_hackathon_jawan_pakistan/pages/home.dart';
import 'package:mini_hackathon_jawan_pakistan/pages/login.dart';
import 'package:mini_hackathon_jawan_pakistan/pages/search.dart';
import 'package:mini_hackathon_jawan_pakistan/pages/splash.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      title: 'JZ Shoppers',
      home: HomePage(),
    );
  }
}