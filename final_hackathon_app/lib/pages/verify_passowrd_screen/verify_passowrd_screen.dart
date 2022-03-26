import 'dart:ui';

import 'package:final_hackathon_app/Components/button.dart';
import 'package:final_hackathon_app/Components/input_feild.dart';
import 'package:final_hackathon_app/Components/text_button.dart';
import 'package:final_hackathon_app/Components/text_feild.dart';
import 'package:final_hackathon_app/Config/constants.dart';
import 'package:final_hackathon_app/Config/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class VerifyPassowrdScreen extends StatefulWidget {
  const VerifyPassowrdScreen({Key? key}) : super(key: key);

  @override
  _VerifyPassowrdScreenState createState() => _VerifyPassowrdScreenState();
}

class _VerifyPassowrdScreenState extends State<VerifyPassowrdScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void Navigation() {
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(logo_medium, semanticsLabel: 'Login Logo'),
          SizedBox(height: 50.h,),
          DynamicTextFeild(text: 'Please Enter Your Phone Number', style: dynamicTextStyle),
          SizedBox(height: 10.h),
          InputFeild(
              prefixIcon: Icons.phone,
              controller: emailController,
              hintText: 'Number',
              isPassword: false),
          SizedBox(height: 20.h,),
          NavigationButton(
            navigate: () {},
            text: 'Verify Password',
            height: 49.h,
            width: 270.w,
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.only(top: 20),
          ),
        ],
      )),
    );
  }
}
