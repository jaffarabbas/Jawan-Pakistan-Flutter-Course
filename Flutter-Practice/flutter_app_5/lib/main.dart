// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_app_5/work1/stack.dart';
import 'package:flutter_app_5/work1/stateMangement.dart';
import 'package:flutter_app_5/work1/textState.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: StackPractice(),
      home: Todo(),
    );
  }
}