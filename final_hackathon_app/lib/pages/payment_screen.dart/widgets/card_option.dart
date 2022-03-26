import 'package:final_hackathon_app/Config/constants.dart';
import 'package:final_hackathon_app/pages/payment_screen.dart/widgets/pakages_product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardOption extends StatelessWidget {
  const CardOption({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:120.h),
      child: Column(
        children: [
          PaymentCardOption(image: visa,),
          PaymentCardOption(image: masterCard,),
        ],
      ),
    );
  }
}