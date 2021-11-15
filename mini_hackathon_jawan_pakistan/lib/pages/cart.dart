// ignore_for_file: override_on_non_overriding_member, avoid_single_cascade_in_expression_statements

import 'package:flutter/material.dart';
import 'package:mini_hackathon_jawan_pakistan/DataSource/CartList.dart';
import 'package:mini_hackathon_jawan_pakistan/DataSource/DataMap.dart';
import 'package:mini_hackathon_jawan_pakistan/pages/home.dart';
import 'package:mini_hackathon_jawan_pakistan/widgits/home/itemCard.dart';
import 'package:mini_hackathon_jawan_pakistan/widgits/theme.dart';

class CartPage extends StatefulWidget {
  // Function appCounter;
  CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  late int index;
  late int counterBar = 0;
  int IndexSeter(int i) {
    setState(() {
      index = i;
    });
    return index;
  }

  void refreashCount() {
    setState(() {
      CartList.cartCount = CartList.cart.length;
    });
  }

  Widget ItemTileView() {
    return ListView.builder(
        shrinkWrap: true,
        // physics: NeverScrollableScrollPhysics(),
        itemCount: CartList.cart.length,
        itemBuilder: (context, index) {
          return ItemCard(
              DeleteCart: () => IndexSeter(index),
              Refresh: refreashCount,
              productInformation: CartList.cart[index]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.primarybackground,
        leading: InkWell(
            onTap: () {
              Navigator.of(context)
                ..push(MaterialPageRoute(
                  builder: (context) => HomePage(),
                )).then((value) {
                  refreashCount();
                });
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: ItemTileView(),
    );
  }
}
