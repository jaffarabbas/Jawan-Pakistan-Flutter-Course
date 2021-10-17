// ignore_for_file: sized_box_for_whitespace, import_of_legacy_library_into_null_safe, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_app_3/widgits/work_1/eclipse.dart';
import 'package:flutter_app_3/widgits/work_1/margin_padding.dart';
import 'package:flutter_app_3/widgits/work_2/images.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        color: Colors.blueAccent[400],
        // shape: SuperellipseShape(
        //   borderRadius: BorderRadius.circular(28.0),
        // ), // SuperellipseShape
        child: Container(
          width: 100.0,
          height: 100.0,
        ), // Container
      ),
    );
  }
}