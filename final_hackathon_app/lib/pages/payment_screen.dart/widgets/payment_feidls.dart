import 'package:final_hackathon_app/Components/button.dart';
import 'package:final_hackathon_app/Components/input_feild.dart';
import 'package:final_hackathon_app/Config/constants.dart';
import 'package:final_hackathon_app/pages/payment_screen.dart/widgets/pakages_product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentFeilds extends StatelessWidget {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  PaymentFeilds({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      margin: EdgeInsets.only(top:250.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            InputFeild(
                  prefixIcon: Icons.verified_user,
                  controller: usernameController,
                  hintText: 'Card Username',
                  isPassword: false),
              InputFeild(
                  prefixIcon: Icons.credit_card,
                  controller: emailController,
                  hintText: 'Cardname',
                  isPassword: false),
              InputFeild(
                  prefixIcon: Icons.date_range,
                  controller: usernameController,
                  hintText: 'Start Date',
                  isPassword: false),
              InputFeild(
                  prefixIcon: Icons.date_range,
                  controller: usernameController,
                  hintText: 'End Date',
                  isPassword: false),
              NavigationButton(
                navigate: () {
                  // NavigatorClass.pushNavigator(context, SignUpScreen());
                },
                text: 'Complete Payment',
                height: 49.h,
                width: 270.w,
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.only(top: 20),
              ),
          ],
        ),
      ),
    );
  }
}