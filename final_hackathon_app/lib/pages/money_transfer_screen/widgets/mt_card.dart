// ignore_for_file: prefer_const_constructors

import 'package:final_hackathon_app/pages/payment_screen.dart/widgets/payment_feidls.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:final_hackathon_app/Config/constants.dart';
import 'package:final_hackathon_app/Config/theme.dart';
import 'package:final_hackathon_app/pages/pakages_screen/widgets/pakages_product_info.dart';
import 'package:final_hackathon_app/pages/sub_categories/widgets/categories_product_info.dart';

class MoneyTransferCard extends StatefulWidget {
  MoneyTransferCard({
    Key? key,
  }) : super(key: key);

  @override
  MoneyTransferCardState createState() => MoneyTransferCardState();
}

class MoneyTransferCardState extends State<MoneyTransferCard> {
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CartCardDecoration,
      margin: EdgeInsets.symmetric(horizontal: 40.w, vertical: 5.h),
      height: 290.0.h,
      width: 280.0.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Payment\nTransfer', style: ProductMainCardMainHeadingStyle),
          Text('Successfull', style: ProductMainCardMainHeadingStyle),
          SizedBox(height:30.h),
          CircleAvatar(
              backgroundColor: Colors.green,
              radius: 40,
              child: Icon(
                Icons.done_rounded,
                color: kPrimaryLightColor,
                size: 50,
              ),
            ),
            SizedBox(height:20.h),
            Text('4000 Rs Paid', style: ProductMainCardMainHeadingStyle),
        ],
      ),
    );
  }
}
