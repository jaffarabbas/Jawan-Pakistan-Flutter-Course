// ignore_for_file: prefer_const_constructors_in_immutables, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';

class CurrentLocation extends StatefulWidget {
  String locationName;
  CurrentLocation({ Key? key, required this.locationName}) : super(key: key);

  @override
  _CurrentLocationState createState() => _CurrentLocationState();
}

class _CurrentLocationState extends State<CurrentLocation> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.location_pin,
          color: Colors.red,
          size: 25,
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          widget.locationName,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
            color: Colors.grey[800],
            fontSize: 17
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.keyboard_arrow_down_rounded,
          color: Colors.grey[500],
          size: 30,
        ),
      ],
    );
  }
}