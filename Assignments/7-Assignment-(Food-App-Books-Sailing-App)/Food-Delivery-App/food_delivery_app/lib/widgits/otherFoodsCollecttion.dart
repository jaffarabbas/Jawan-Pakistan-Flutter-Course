// ignore_for_file: prefer_const_constructors_in_immutables, file_names, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:food_delivery_app/dataSource/datamap.dart';
import 'package:food_delivery_app/widgits/otherFood.dart';

class OtherFoodCollection extends StatefulWidget {
  OtherFoodCollection({Key? key}) : super(key: key);

  @override
  _OtherFoodCollectionState createState() => _OtherFoodCollectionState();
}

class _OtherFoodCollectionState extends State<OtherFoodCollection> {
   List<Widget> OtherFoodList() {
    List<Widget> lst = [];
    for (Map i in Datamap.DataSource()["otherFoods"]) {
      lst.add(OtherFood(foodProductInformation: i));
    }
    return lst;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25),
      height: 180.0,
      child: ListView(
        padding: EdgeInsets.only(left: 30),
        scrollDirection: Axis.horizontal,
        children: OtherFoodList(),
      ),
    );
  }
}

