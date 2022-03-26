import 'package:final_hackathon_app/Config/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesHeader extends StatefulWidget {
  const CategoriesHeader({Key? key}) : super(key: key);

  @override
  State<CategoriesHeader> createState() => _CategoriesHeaderState();
}

class _CategoriesHeaderState extends State<CategoriesHeader> {
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
