import 'package:final_hackathon_app/Config/theme.dart';
import 'package:flutter/material.dart';
import 'package:final_hackathon_app/Config/constants.dart';

class DynamicTextButton extends StatelessWidget {
  String text;
  Function function;
  DynamicTextButton({ Key? key,required this.function,required this.text }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){
        function();
      },
      child: Text(
        text,
        style: dynamicTextStyle,
      ),
    );
  }
}