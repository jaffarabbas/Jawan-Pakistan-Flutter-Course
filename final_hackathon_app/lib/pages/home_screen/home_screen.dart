import 'package:final_hackathon_app/Config/constants.dart';
import 'package:final_hackathon_app/pages/home_screen/widgets/product_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(0),
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              child: Container(
                child: SvgPicture.asset(main_background,
                    semanticsLabel: 'Splash Logo', fit: BoxFit.fitHeight),
              ),
            ),
            Positioned(
              top: 60.h,
              child: Container(
                child:
                    SvgPicture.asset(home_logo, semanticsLabel: 'Signup Logo'),
              ),
            ),
            ProductGrid(),
          ],
        ),
      ),
    );
  }
}
