import 'package:final_hackathon_app/Config/theme.dart';
import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  String text;
  double height;
  double width;
  EdgeInsetsGeometry padding;
  EdgeInsetsGeometry margin;
  Function navigate;

  NavigationButton(
      {Key? key,
      required this.navigate,
      required this.text,
      required this.height,
      required this.width,
      required this.padding,
      required this.margin,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigate();
      },
      child: Container(
        alignment: Alignment.center,
        height: height,
        width: width,
        padding: padding,
        margin: margin,
        decoration: BigButtonStyle,
        child: Text(
          text,
          style: buttonTextStyle,
        ),
      ),
    );
  }
}
