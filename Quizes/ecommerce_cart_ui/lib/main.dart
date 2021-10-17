// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_cart_ui/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.josefinSans().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFE8E8E8),
          title: Row(
            children: [
              Image.asset(
                'Images/logo/logo.png',
                height: 30,
              ),
              SizedBox(
                width: 5,
              ),
              RichText(
                text: TextSpan(
                    text: 'mobi',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 19,
                    ),
                    children: [
                      TextSpan(
                        text: 'sport',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.grey[800],
                        ),
                      ),
                    ]),
              ),
            ],
          ),
          actions: [
            Icon(
              Icons.search,
              color: Colors.black,
            ),
            SizedBox(
              width: 13,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: HomePage(),
        ),
      ),
    );
  }
}
