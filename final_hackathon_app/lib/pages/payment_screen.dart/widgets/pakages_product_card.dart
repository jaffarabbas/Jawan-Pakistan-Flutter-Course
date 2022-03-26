// ignore_for_file: prefer_const_constructors

import 'package:final_hackathon_app/pages/payment_screen.dart/widgets/payment_feidls.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:final_hackathon_app/Config/constants.dart';
import 'package:final_hackathon_app/Config/theme.dart';
import 'package:final_hackathon_app/pages/pakages_screen/widgets/pakages_product_info.dart';
import 'package:final_hackathon_app/pages/sub_categories/widgets/categories_product_info.dart';

class PaymentCardOption extends StatefulWidget {
  String image;
  PaymentCardOption({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  PaymentCardOptionState createState() => PaymentCardOptionState();
}

class PaymentCardOptionState extends State<PaymentCardOption> {
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          flag ? flag = false : flag = true;
        });
      },
      child: Container(
        decoration: CartCardDecoration,
        margin: EdgeInsets.symmetric(horizontal:20.w,vertical:5.h),
        height: 50.0.h,
        width: 280.0.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 80.h,
              width: 90.w,
              child: Image.asset(
                widget.image,
                fit: BoxFit.scaleDown,
              ),
            ),
            flag ? CircleAvatar(
              backgroundColor: Colors.green,
              radius: 15,
              child: Icon(
                Icons.done_rounded,
                color: kPrimaryLightColor,
              ),
            ) : Container(),
          ],
        ),
      ),
    );
  }
}
