// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Text('My App').toString(),
      home:Scaffold(
        appBar: AppBar(
          title : Text('My App'),
        ),
        body: Container(
          height: 100,
          width : 100,
          margin: EdgeInsets.only(left: 43,top: 30),
          padding: EdgeInsets.only(top: 10),
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color : Colors.red,
          ),
          transform: Matrix4.rotationZ(0.1),
          child: Text('Jaffar',
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ),
      )
    );
  }
}
