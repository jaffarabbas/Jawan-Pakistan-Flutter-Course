import 'dart:ui';

import 'package:final_hackathon_app/Config/constants.dart';
import 'package:final_hackathon_app/Config/theme.dart';
import 'package:final_hackathon_app/pages/auth_method_screen/auth_mehtod_screen.dart';
import 'package:final_hackathon_app/pages/forget_password_screen.dart/forget_password_screen.dart';
import 'package:final_hackathon_app/pages/home_screen/home_screen.dart';
import 'package:final_hackathon_app/pages/login_screen/login_screen.dart';
import 'package:final_hackathon_app/pages/money_transfer_screen/money_transfer_screen.dart';
import 'package:final_hackathon_app/pages/pakages_screen/pakages_screen.dart';
import 'package:final_hackathon_app/pages/payment_screen.dart/payment_screen.dart';
import 'package:final_hackathon_app/pages/signup_screen/signup_screen.dart';
import 'package:final_hackathon_app/pages/splash_screen/splash_screen.dart';
import 'package:final_hackathon_app/pages/sub_categories/categories_screen.dart';
import 'package:final_hackathon_app/pages/verify_passowrd_screen/verify_passowrd_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        theme: theme(),
        home: HomeScreen(),
        debugShowCheckedModeBanner: false,
      ),
      designSize: const Size(width,height),
    );
  }
}
