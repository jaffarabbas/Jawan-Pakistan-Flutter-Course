// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class Eclipser extends StatelessWidget {
  Eclipser({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blueAccent[400],
      shape: SuperellipseShape(
        borderRadius: BorderRadius.circular(28.0),
      ), // SuperellipseShape
      child: Container(
        width: 100.0,
        height: 100.0,
      ), // Container
    );
  }
}