import 'package:final_hackathon_app/Config/constants.dart';
import 'package:final_hackathon_app/Config/theme.dart';
import 'package:final_hackathon_app/pages/sub_categories/widgets/categories_product_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesCard extends StatefulWidget {
  const CategoriesCard({Key? key}) : super(key: key);

  @override
  _CategoriesCardState createState() => _CategoriesCardState();
}

class _CategoriesCardState extends State<CategoriesCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CartCardDecoration,
      margin: EdgeInsets.symmetric(horizontal:20.w,vertical:16.h),
      height: 90.0.h,
      width: 280.0.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 80.h,
            width: 90.w,
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
