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


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
          InputFeild(
              prefixIcon: Icons.person_rounded,
              controller: emailController,
              hintText: 'Email',
              isPassword: false),
          InputFeild(
              prefixIcon: Icons.lock,
              controller: passwordController,
              hintText: 'Password',
              isPassword: true),
          NavigationButton(
            navigate: () {},
            text: 'Login',
            height: 49.h,
            width: 270.w,
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.only(top: 20),
          ),
          SizedBox(height: 20.h),
          DynamicTextFeild(text: 'Forget Password ?', style: dynamicTextStyle),
          SizedBox(height: 12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DynamicTextFeild(
                  text: 'dont have account?', style: secondaryTextStyle),
              SizedBox(
                width: 10.w,
              ),
              DynamicTextButton(
                  function: () {
                    Navigation();
                  },
                  text: 'SignUp')
            ],
          ),
        ],
      )),
    );
  }
}
