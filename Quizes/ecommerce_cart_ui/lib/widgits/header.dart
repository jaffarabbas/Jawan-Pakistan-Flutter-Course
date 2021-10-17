// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left:10.0 , right:10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Running',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          Text(
            '15 results',
            style: TextStyle(
              color: Colors.grey[500],
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }
}
