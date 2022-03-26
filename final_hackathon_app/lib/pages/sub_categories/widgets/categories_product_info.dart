import 'package:final_hackathon_app/Config/theme.dart';
import 'package:final_hackathon_app/pages/sub_categories/widgets/categories_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesInfo extends StatefulWidget {
  const CategoriesInfo({Key? key}) : super(key: key);

  @override
  _CategoriesInfoState createState() => _CategoriesInfoState();
}

class _CategoriesInfoState extends State<CategoriesInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.w, bottom: 10.h),
      padding: EdgeInsets.only(top:5.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Black Vigo',
            style: ProductCardInfoTextStyle
          ),
          Text(
            'Use for security purpose',
            style: ProductCardInfoSmallTextStyle
          ),
          Container(height: 12, child: Rating(avg: 6)),
          Container(
            width: 90.w,
            child: Text(
                  '30000 Rs',
                  style: ProductCardInfoTextStyle
                ),
          ),
        ],
      ),
    );
  }
}
