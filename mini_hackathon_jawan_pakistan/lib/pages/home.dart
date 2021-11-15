// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, non_constant_identifier_names, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mini_hackathon_jawan_pakistan/DataSource/CartList.dart';
import 'package:mini_hackathon_jawan_pakistan/DataSource/DataMap.dart';
import 'package:mini_hackathon_jawan_pakistan/DataSource/FavouriteList.dart';
import 'package:mini_hackathon_jawan_pakistan/pages/cart.dart';
import 'package:mini_hackathon_jawan_pakistan/pages/favourite.dart';
import 'package:mini_hackathon_jawan_pakistan/pages/profile.dart';
import 'package:mini_hackathon_jawan_pakistan/pages/search.dart';
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
  int currentBottomNavigationIndex = 0;
  int counterBar = 0;
  final tabs = [
    HomePage(),
    SearchPage(),
    ProfilePage(),
  ];

  Widget CartTileView() {
    return ListView.builder(
        shrinkWrap: true,
        // physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: Datamap.DataSource()["slider"].length,
        itemBuilder: (context, index) {
          return SLiderCard(
              productInformation: Datamap.DataSource()["slider"][index]);
        });
  }

  Widget ItemTileView() {
    return ListView.builder(
        shrinkWrap: true,
        // physics: NeverScrollableScrollPhysics(),
        itemCount: Datamap.DataSource()["items"].length,
        itemBuilder: (context, index) {
          return ItemCard(
              DeleteCart: () {},
              Refresh: refreashCount,
              productInformation: Datamap.DataSource()["items"][index]);
        });
  }

  void refreashCount() {
    setState(() {
      CartList.cartCount = CartList.cart.length;
      print(CartList.cartCount);
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
                "assets/images/layout/drawerLogo.svg",
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Favouritepage()),
              );
              print(FavouriteList.favourite);
            },
            icon: Icon(
              Icons.favorite,
              color: AppTheme.primarybackground,
            ),
          ),
          Stack(
            overflow: Overflow.visible,
            children: [
              Positioned(
                right: -10,
                top: 10,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: AppTheme.primarybackground,
                  child: Text(
                    "${CartList.cartCount.toString()}",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 4),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CartPage()),
                    );
                  },
                  icon: Icon(
                    Icons.shopping_cart_rounded,
                    color: AppTheme.primarybackground,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Container(height: 250, child: CartTileView()),
            Expanded(
              child: ItemTileView(),
            ),
          ],
        ),
      ),
      drawer: AppDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => setState(() => currentBottomNavigationIndex = index),
        currentIndex: currentBottomNavigationIndex,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w600,
        ),
        selectedIconTheme: IconThemeData(color: AppTheme.primarybackground),
        unselectedIconTheme: IconThemeData(color: Colors.grey[400]),
        selectedFontSize: 12,
        unselectedFontSize: 12,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              size: 20,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 20,
            ),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_rounded,
              size: 20,
            ),
            label: 'profile',
          ),
        ],
      ),
    );
  }
}
