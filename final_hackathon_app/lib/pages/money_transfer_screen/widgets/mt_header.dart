import 'package:final_hackathon_app/Config/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoneyTransferHeader extends StatefulWidget {
  const MoneyTransferHeader({Key? key}) : super(key: key);

  @override
  State<MoneyTransferHeader> createState() => MoneyTransferHeaderState();
}

class MoneyTransferHeaderState extends State<MoneyTransferHeader> {
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
            'Money Transfer',
            style: HeaderMainHeadingTextStyle
          ),
        ],
      ),
    );
  }
}
