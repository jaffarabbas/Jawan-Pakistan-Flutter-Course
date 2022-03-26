// ignore_for_file: file_names, must_be_immutable, prefer_const_constructors

import 'package:final_hackathon_app/Config/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputFeild extends StatefulWidget {
  TextEditingController controller;
  String hintText;
  bool isPassword;
  IconData prefixIcon;
  InputFeild({Key? key, required this.controller, required this.hintText, required this.isPassword,required this.prefixIcon})
      : super(key: key);

  @override
  _InputFeildState createState() => _InputFeildState();
}

class _InputFeildState extends State<InputFeild> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5.h),
      padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 7.h),
      child: TextField(
        controller: widget.controller,
        obscureText: widget.isPassword ? true : false,
        decoration: InputDecoration(
          prefixIcon: Icon(
            widget.prefixIcon,
            size: 30.sp,
            color: kSecondaryFontColor,
          ),
          prefixIconColor: kSecondaryFontColor,
          hintText: widget.hintText,
        ),
      ),
    );
  }
}
