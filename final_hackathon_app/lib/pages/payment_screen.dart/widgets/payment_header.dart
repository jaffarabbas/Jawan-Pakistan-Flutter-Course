import 'package:final_hackathon_app/Config/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentHeader extends StatefulWidget {
  const PaymentHeader({Key? key}) : super(key: key);

  @override
  State<PaymentHeader> createState() => PaymentHeaderState();
}

class PaymentHeaderState extends State<PaymentHeader> {
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
            'Payment',
            style: HeaderMainHeadingTextStyle
          ),
        ],
      ),
    );
  }
}
