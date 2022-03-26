import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryImage extends StatelessWidget {
  String image;
  double height;
  double width;
  PrimaryImage(
      {Key? key,
      required this.image,
      required this.width,
      required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Image.asset(
        image,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
