import 'package:flutter/material.dart';
import 'package:final_hackathon_app/Config/constants.dart';

class DynamicTextFeild extends StatelessWidget {
  String text;
  TextStyle style;
  DynamicTextFeild({ Key? key,required this.text ,required this.style}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}