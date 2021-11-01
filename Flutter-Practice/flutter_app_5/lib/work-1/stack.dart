// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

class StackPractice extends StatefulWidget {
  StackPractice({ Key? key }) : super(key: key);

  @override
  _StackPracticeState createState() => _StackPracticeState();
}

class _StackPracticeState extends State<StackPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top:50,left:10),
        alignment: Alignment.center,
        width: 390,
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Container(
              height: 200,
              color: Colors.red,
            ),
            Container(
              height: 100,
              color: Colors.yellow,
            ),
            Positioned(
              bottom: -10,
              right: -10,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.black,
              ),
            ),
            Positioned(
              bottom: -10,
              left: -10,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.orange,
              ),
            ),
            Positioned(
              top: -10,
              right: -10,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.green,
              ),
            ),
            Positioned(
              top: -10,
              left: -10,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}