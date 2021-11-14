import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_hackathon_jawan_pakistan/pages/home.dart';
import 'package:mini_hackathon_jawan_pakistan/pages/login.dart';
 
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