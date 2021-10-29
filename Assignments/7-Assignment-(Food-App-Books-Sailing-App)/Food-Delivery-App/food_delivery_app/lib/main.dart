// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentBottomNavigationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      home: Material(
        child: Scaffold(
          body: HomePage(),
          bottomNavigationBar: BottomNavigationBar(
          onTap: (index) => setState(() => currentBottomNavigationIndex = index),
          currentIndex: currentBottomNavigationIndex,
          type: BottomNavigationBarType.fixed,
          // fixedColor: Colors.red,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w600,
          ),
          // selectedItemColor: Colors.red,
          // unselectedItemColor: Colors.red,
          selectedIconTheme: IconThemeData(
            color: Colors.red
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.grey[400]
          ),
          selectedFontSize: 12,
          unselectedFontSize: 12,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.solidCompass,
                  size: 20,
                ),
                label: 'search',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.solidBookmark,
                  size: 20,
                ),
                label: 'bookmark',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.history,
                  size: 20,
                ),
                label: 'history',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications_active_sharp,
                  size: 25,
                ),
                label: 'notification',
            ),
          ],
        ),
        ),
      ),
    );
  }
}
