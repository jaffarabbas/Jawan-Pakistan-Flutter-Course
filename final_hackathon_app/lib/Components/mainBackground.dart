import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:final_hackathon_app/Config/constants.dart';

class MainBackground extends StatelessWidget {
  const MainBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SvgPicture.asset(main_background,
          semanticsLabel: 'Splash Logo', fit: BoxFit.fitHeight),
    );
  }
}
