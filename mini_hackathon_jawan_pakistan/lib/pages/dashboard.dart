import 'package:flutter/material.dart';
import 'package:mini_hackathon_jawan_pakistan/DataSource/CartList.dart';
import 'package:mini_hackathon_jawan_pakistan/DataSource/DataMap.dart';
import 'package:mini_hackathon_jawan_pakistan/widgits/home/itemCard.dart';
import 'package:mini_hackathon_jawan_pakistan/widgits/home/sliderCard.dart';

class Dashboard extends StatefulWidget {
  Function refresh;
  Dashboard({Key? key , required this.refresh}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
              DeleteFavourate: (){},
              isFavouritePage: false,
              Refresh: widget.refresh,
              productInformation: Datamap.DataSource()["items"][index]);
        });
  }

  // void refreashCount() {
  //   setState(() {
  //     CartList.cartCount = CartList.cart.length;
  //     print(CartList.cartCount);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(height: 200, child: CartTileView()),
          Expanded(
            child: ItemTileView(),
          ),
        ],
      ),
    );
  }
}
