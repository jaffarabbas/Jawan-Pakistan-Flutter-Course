import 'package:final_hackathon_app/Config/constants.dart';
import 'package:final_hackathon_app/Config/theme.dart';
import 'package:final_hackathon_app/pages/pakages_screen/widgets/pakages_product_info.dart';
import 'package:final_hackathon_app/pages/sub_categories/widgets/categories_product_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PakagesCarDetailsCard extends StatefulWidget {
  const PakagesCarDetailsCard({Key? key}) : super(key: key);

  @override
  PakagesCarDetailsCardState createState() => PakagesCarDetailsCardState();
}

class PakagesCarDetailsCardState extends State<PakagesCarDetailsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CartCardDecoration,
      margin: EdgeInsets.only(left:20.w,right:20.w,top:100.h),
      height: 150.0.h,
      width: 300.0.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 120.h,
            width: 110.w,
            child: Image.asset(
              c2,
              fit: BoxFit.scaleDown,
            ),
          ),
          CategoriesInfo(),
        ],
      ),
    );
  }
}
