import 'package:final_hackathon_app/Config/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Container(
          child: SvgPicture.asset(logo_large, semanticsLabel: 'Splash Logo'),
        ),
      ),
    );
  }
}
