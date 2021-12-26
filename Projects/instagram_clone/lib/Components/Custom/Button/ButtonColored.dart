// ignore_for_file: file_names

import 'package:instagram_clone/Config/constants.dart';
import 'package:instagram_clone/Config/size_config.dart';
import 'package:instagram_clone/Config/theme.dart';
import 'package:flutter/material.dart';

class ButtonColored extends StatelessWidget {
  final void Function() function;
  final String text;
  const ButtonColored({Key? key, required this.function, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        decoration: BoxDecoration(
            gradient: kPrimaryGradientColor,
            boxShadow: [getShadow(kPrimaryColor)]),
        height: getSize(false, 0.06),
        alignment: Alignment.center,
        child: Text(
          text,
          style: const TextStyle(color: kPrimaryLightColor),
        ),
      ),
    );
  }
}
