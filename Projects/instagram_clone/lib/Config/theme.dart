import 'package:fb_login_app/Config/size_config.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Overlook",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: const BorderSide(color: kTextColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    // If  you are using latest version of flutter then lable text and hint text shown like this
    // if you r using flutter less then 1.20.* then maybe this is not working properly
    // if we are define our floatingLabelBehavior in our theme then it's not applayed
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme textTheme() {
  return const TextTheme(
    button: TextStyle(
      color: kPrimaryLightColor,

    ),
    headline1: headingStyle,
    headline2: TextStyle(
      color: kHeading,
      fontFamily: "Times New Roman",
      fontSize: headingfontSize,
      height: 1,
    ),
    bodyText1: TextStyle(
      color: kTextColor,
      fontSize: fontSize - 2,

    ),
    bodyText2: TextStyle(color: kTextColor, fontSize: fontSize),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    color: Colors.white,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
    textTheme: TextTheme(
      headline6: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
    ),
  );
}

BoxShadow getShadow(Color colorTo) {
  return BoxShadow(
    color: colorTo.withOpacity(.5),
    spreadRadius: 1,
    blurRadius: 20,
    offset: const Offset(0, 14), // changes position of shadow
  );
}
