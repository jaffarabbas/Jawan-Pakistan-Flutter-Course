// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mini_hackathon_jawan_pakistan/DataSource/DataMap.dart';
import 'package:mini_hackathon_jawan_pakistan/widgits/bottomNavigation.dart';
import 'package:mini_hackathon_jawan_pakistan/widgits/drawer.dart';
import 'package:mini_hackathon_jawan_pakistan/widgits/home/itemCard.dart';
import 'package:mini_hackathon_jawan_pakistan/widgits/home/sliderCard.dart';
import 'package:mini_hackathon_jawan_pakistan/widgits/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget CartTileView() {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: Datamap.DataSource()["slider"].length,
        itemBuilder: (context, index) {
          return SLiderCard(productInformation: Datamap.DataSource()["slider"][index]);
        });
  }
  Widget ItemTileView() {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: Datamap.DataSource().length,
        itemBuilder: (context, index) {
          return ItemCard(productInformation: Datamap.DataSource()["items"][index]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Builder(
            builder: (context) => IconButton(
              icon: SvgPicture.asset(
                "images/layout/drawerLogo.svg",
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              color: AppTheme.primarybackground,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_rounded,
              color: AppTheme.primarybackground,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(child: CartTileView()),
            Expanded(
              child: ItemTileView(),
            ),
          ],
        ),
      ),
      drawer: AppDrawer(),
      bottomNavigationBar: BootomNavigate()
    );
  }
}
