// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_delivery_app/dataSource/datamap.dart';
import 'package:food_delivery_app/widgits/cartegoriesHeader.dart';
import 'package:food_delivery_app/widgits/currentLocation.dart';
import 'package:food_delivery_app/widgits/favorateProductCollection.dart';
import 'package:food_delivery_app/widgits/foodCategories.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      appBar: AppBar(
        backgroundColor: Color(0xfff5f5f5),
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            color: Colors.red,
            icon: Icon(
              Icons.grid_view_rounded,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        actions: [
          CircleAvatar(
            radius: 17,
            backgroundColor: Colors.red,
            child: CircleAvatar(
              radius: 14,
              backgroundImage: AssetImage('Images/admin.jpeg'),
            ),
          ),
          SizedBox(
            width: 30,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CurrentLocation(locationName: 'Denpasar, IDN'),
            FoodCategory(),
            FoodCategoryHeader(headings: ['Favorite ','Foods']),
            FavorateAppCollection(foodProductInformation: Datamap.DataSource()["favoriteFoods"][0])
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}
