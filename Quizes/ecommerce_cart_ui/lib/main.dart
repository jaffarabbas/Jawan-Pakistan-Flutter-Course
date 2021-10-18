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
  int currentBottomNavigationIndex = 0;
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
                'assets/Images/logo.png',
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
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.red,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.red,
                  size: 30,
                ),
                label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.grid_on_sharp,
                  color: Colors.red,
                  size: 30,
                ),
                label: 'Catalog',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.red,
                  size: 30,
                ),
                label: 'Bag',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline_rounded,
                  color: Colors.red,
                  size: 30,
                ),
                label: 'Profile',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.red,
                  size: 30,
                ),
                label: 'More',
            )
          ],
        ),
      ),
    );
  }
}
