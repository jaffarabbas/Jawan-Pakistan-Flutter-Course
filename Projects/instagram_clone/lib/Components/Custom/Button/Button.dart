// ignore_for_file: file_names

import 'package:instagram_clone/Config/size_config.dart';
import 'package:flutter/material.dart';

class ButtonText extends StatelessWidget {
  final void Function() function;
  final String text;
  const ButtonText({Key? key, required this.function, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        alignment: Alignment.center,

        height: getSize(false, 0.0525),
        width: getSize(true, .7),
        child: Text(text),
      ),
    );
  }
}
