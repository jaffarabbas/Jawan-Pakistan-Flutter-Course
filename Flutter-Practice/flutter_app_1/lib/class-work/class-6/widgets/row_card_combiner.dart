// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_app_1/class-work/class-6/widgets/left_card.dart';
import 'package:flutter_app_1/class-work/class-6/widgets/right_card.dart';

class RowCombiner extends StatelessWidget {
  RowCombiner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [LeftCard(), RightCard()],
    );
  }
}
