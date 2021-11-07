// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_app_4/work_1/expanded.dart';
import 'package:flutter_app_4/work_1/home.dart';
import 'package:flutter_app_4/work_2/media_query_2.dart';
import 'package:flutter_app_4/work_2/mediaquery.dart';
import 'package:flutter_app_4/work_2/multiplewidgitswithexpaneded.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      home: MediaQueryCheck2(),
    );
  }
}