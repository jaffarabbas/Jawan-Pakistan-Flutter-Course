// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, use_full_hex_values_for_flutter_colors, avoid_unnecessary_containers, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/main-background.png"),
                fit: BoxFit.cover),
          ),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 20),
                  ),
                ),
                Container(
                  height: 350,
                  width: 300,
                  margin: EdgeInsets.only(top: 50),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 6,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 270,
                        margin: EdgeInsets.only(top: 40),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Enter Username",
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: FaIcon(
                                FontAwesomeIcons.solidUserCircle,
                                color: Color(0xFFFC5D2B),
                                size: 32,
                              ),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xFFFC5D2B), width: 2.3),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xFFFC5D2B), width: 2.3),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 270,
                        margin: EdgeInsets.only(top: 40),
                        child: TextField(
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          decoration: InputDecoration(
                            hintText: "Enter Password",
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(top: 4),
                              child: FaIcon(
                                FontAwesomeIcons.lock,
                                color: Color(0xFFFC5D2B),
                                size: 32,
                              ),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Color(0xFFFC5D2B), width: 2),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Color(0xFFFC5D2B), width: 2),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        width: 180,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.facebook,
                              color: Color(0xFFFC5D2B),
                              size: 35,
                            ),
                            FaIcon(
                              FontAwesomeIcons.google,
                              color: Color(0xFFFC5D2B),
                              size: 35,
                            ),
                            FaIcon(
                              FontAwesomeIcons.github,
                              color: Color(0xFFFC5D2B),
                              size: 35,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 200,
                        margin: EdgeInsets.only(top: 20),
                        child: FlatButton(
                          padding: EdgeInsets.all(16),
                          color: Color(0xFFFC5D2B),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            'LOGIN HERE',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding : EdgeInsets.only(top:30),
                  child: FlatButton(
                    child: Text(
                      "Forget Passowrd ? ",
                      style: TextStyle(
                        color : Color(0xFFFC5D2B),
                        fontSize:16
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
