import 'package:final_hackathon_app/Config/theme.dart';
import 'package:final_hackathon_app/pages/sub_categories/widgets/categories_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PakagesInfo extends StatefulWidget {
  const PakagesInfo({Key? key}) : super(key: key);

  @override
  PakagesInfoState createState() => PakagesInfoState();
}

class PakagesInfoState extends State<PakagesInfo> {
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
            'Black 5 off',
            style: ProductCardInfoTextStyle
          ),
          Text(
            'Rent for 5 days',
            style: ProductCardInfoSmallTextStyle
          ),
          Container(height: 12, child: Rating(avg: 6)),
          Container(
            width: 90.w,
            child: Text(
                  '1000 Rs/d',
                  style: ProductCardInfoTextStyle
                ),
          ),
        ],
      ),
    );
  }
}
