import 'package:final_hackathon_app/Config/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Rating extends StatefulWidget {
  int avg;
  Rating({
    Key? key,
    required this.avg,
  }) : super(key: key);

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: widget.avg,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
        return Icon(Icons.star,color: kPrimaryColor,size: 10.sp,);
      },),
    );
  }
}