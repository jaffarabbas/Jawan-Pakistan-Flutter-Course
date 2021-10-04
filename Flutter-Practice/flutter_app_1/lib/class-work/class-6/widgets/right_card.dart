// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class RightCard extends StatelessWidget {
  const RightCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(top: 10),
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.red,
      ),
      child: Text(
        'Jaffar',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
