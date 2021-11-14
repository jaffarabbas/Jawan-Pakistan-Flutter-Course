// ignore_for_file: avoid_unnecessary_containers, use_key_in_widget_constructors, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:mini_hackathon_jawan_pakistan/widgits/theme.dart';

class Feilds extends StatefulWidget {
  // String value;
  String hint;
  bool isPass;
  Feilds(
      {Key? key,required this.hint, required this.isPass})
      : super(key: key);

  @override
  _FeildsState createState() => _FeildsState();
}

class _FeildsState extends State<Feilds> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.symmetric(vertical: 15),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        // onChanged: (value) {
        //   setState(() {
        //     widget.value = value;
        //   });
        // },
        validator: widget.isPass
            ? (value) {
                if (value!.isEmpty) {
                  return "Password cannot be empty";
                } else if (value.length != 6) {
                  return "Password should be 6";
                }
                return null;
              }
            : (value) {
                if (value!.isEmpty) {
                  return "Username cannot be empty";
                }
                return null;
              },
        obscureText: widget.isPass,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(color: AppTheme.primarybackground, width: 0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(color: AppTheme.primarybackground, width: 0),
          ),
          // filled: true,
          hintStyle: TextStyle(
              color: AppTheme.primarybackground,
              fontSize: 14,
              fontWeight: FontWeight.bold),
          hintText: widget.hint,
          // fillColor: Color(0xfff0e6d1),
          prefixIcon: Icon(
            Icons.person_outline_sharp,
            color: AppTheme.primarybackground,
          ),
        ),
      ),
    );
  }
}
