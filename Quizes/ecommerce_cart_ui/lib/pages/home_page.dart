// ignore_for_file: prefer_const_constructors_in_immutables, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:ecommerce_cart_ui/DataSource/DataMap.dart';
import 'package:ecommerce_cart_ui/widgits/cart.dart';
import 'package:ecommerce_cart_ui/widgits/header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget CartTileView() {
    return ListView.builder(
        itemCount: Datamap.DataSource().length,
        itemBuilder: (context, index) {
          return CartTile(productInformation: Datamap.DataSource()[index]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Header(),
          Expanded(
            child: SizedBox(
              width: 340,
              child: CartTileView()
            ),
          )
        ],
      ),
    );
  }
}
