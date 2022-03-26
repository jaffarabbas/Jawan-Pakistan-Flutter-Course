import 'package:flutter/material.dart';

class NavigatorClass{
  static void pushNavigator(BuildContext context,Widget widget){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );
  }
}