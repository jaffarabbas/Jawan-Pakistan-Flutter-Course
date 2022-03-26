// ignore_for_file: sized_box_for_whitespace

import 'package:final_hackathon_app/components/appbar.dart';
import 'package:final_hackathon_app/components/drawer.dart';
import 'package:final_hackathon_app/components/mainBackground.dart';
import 'package:final_hackathon_app/pages/pakages_screen/widgets/pakages_product_card_list.dart';
import 'package:final_hackathon_app/pages/sub_categories/widgets/categories_header.dart';
import 'package:final_hackathon_app/pages/sub_categories/widgets/categories_product_card_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PakagesScreenScreen extends StatefulWidget {
  const PakagesScreenScreen({Key? key}) : super(key: key);

  @override
  PakagesScreenScreenState createState() => PakagesScreenScreenState();
}

class PakagesScreenScreenState extends State<PakagesScreenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          // alignment: Alignment.center,
          children: [
            const Positioned(
              top: 0,
              child: MainBackground(),
            ),
            Positioned(
              top: 80.h,
              child: const CategoriesHeader(),
            ),
            const PakagesList(),
          ],
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
