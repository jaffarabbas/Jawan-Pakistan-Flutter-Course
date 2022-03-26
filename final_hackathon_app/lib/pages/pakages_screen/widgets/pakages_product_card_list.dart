import 'package:final_hackathon_app/pages/pakages_screen/widgets/pakages_car_detials.dart';
import 'package:final_hackathon_app/pages/pakages_screen/widgets/pakages_product_card.dart';
import 'package:final_hackathon_app/pages/sub_categories/widgets/categories_product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PakagesList extends StatefulWidget {
  const PakagesList({Key? key}) : super(key: key);

  @override
  State<PakagesList> createState() => PakagesListState();
}

class PakagesListState extends State<PakagesList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5.h),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PakagesCarDetailsCard(),
            Container(
              margin: EdgeInsets.only(top:10),
              height: 360.h,
              child: ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.all(0),
                itemCount: 30,
                itemBuilder: (context, index) {
                  return PakagesCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
