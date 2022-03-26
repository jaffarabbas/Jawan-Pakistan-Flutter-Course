import 'package:final_hackathon_app/Config/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PakagesHeader extends StatefulWidget {
  const PakagesHeader({Key? key}) : super(key: key);

  @override
  State<PakagesHeader> createState() => PakagesHeaderState();
}

class PakagesHeaderState extends State<PakagesHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
      padding: EdgeInsets.symmetric(horizontal: 17.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Vigo Cars',
            style: HeaderMainHeadingTextStyle
          ),
        ],
      ),
    );
  }
}
