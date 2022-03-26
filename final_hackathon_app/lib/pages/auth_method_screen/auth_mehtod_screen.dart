import 'dart:ui';

import 'package:final_hackathon_app/Components/button.dart';
import 'package:final_hackathon_app/Components/input_feild.dart';
import 'package:final_hackathon_app/Config/constants.dart';
import 'package:final_hackathon_app/Config/theme.dart';
import 'package:final_hackathon_app/components/text_button.dart';
import 'package:final_hackathon_app/components/text_feild.dart';
import 'package:final_hackathon_app/pages/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthMethodScreen extends StatefulWidget {
  const AuthMethodScreen({Key? key}) : super(key: key);

  @override
  _AuthMethodScreenState createState() => _AuthMethodScreenState();
}

class _AuthMethodScreenState extends State<AuthMethodScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void Navigation() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30.h,),
          SvgPicture.asset(logo_medium, semanticsLabel: 'SIgnup Logo'),
          SizedBox(height: 20.h),
          NavigationButton(
            navigate: () {
              // NavigatorClass.pushNavigator(context, AuthMethodScreen());
            },
            text: 'LoginIn',
            height: 49.h,
            width: 270.w,
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.only(top: 20),
          ),
          NavigationButton(
            navigate: () {
              // NavigatorClass.pushNavigator(context, AuthMethodScreen());
            },
            text: 'SignUp',
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
