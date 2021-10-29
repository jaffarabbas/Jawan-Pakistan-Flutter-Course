// ignore_for_file: prefer_const_constructors_in_immutables, file_names, avoid_unnecessary_containers, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:food_delivery_app/containers/foodCategoryTag.dart';
import 'package:food_delivery_app/dataSource/datamap.dart';

class FoodCategory extends StatefulWidget {
  FoodCategory({Key? key}) : super(key: key);

  @override
  _FoodCategoryState createState() => _FoodCategoryState();
}

class _FoodCategoryState extends State<FoodCategory> {
  List<Widget> FoodTagList() {
    List<Widget> lst = [];
    for (Map i in Datamap.DataSource()["category"]) {
      lst.add(FoodCategoryTag(itemInformation: i));
    }
    return lst;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 35),
            child: RichText(
              text: TextSpan(
                text: 'Food',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontSize: 20,
                ),
                children: [
                  TextSpan(
                    text: ' Categories',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 35.0),
              child: Row(
                children: FoodTagList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
