// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';

class TextFeildModel {
  final String label;
  late String errorMessage = "Text Feild is Emtpy";
  late String value = "";

  late bool isError = false;
  late bool isFill = false;

  TextEditingController control =  TextEditingController();

  TextFeildModel({required this.label});

  onChange(String valueEnter){
    value =  valueEnter;
    isFill = value.isNotEmpty;
  }
}