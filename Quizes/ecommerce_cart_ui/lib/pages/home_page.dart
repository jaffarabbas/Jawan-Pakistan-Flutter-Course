// ignore_for_file: prefer_const_constructors_in_immutables, avoid_unnecessary_containers

import 'package:ecommerce_cart_ui/widgits/header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Header(),
        ],
      ),
    );
  }
}