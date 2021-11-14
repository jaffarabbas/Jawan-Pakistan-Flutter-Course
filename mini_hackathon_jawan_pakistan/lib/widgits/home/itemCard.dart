// ignore_for_file: file_names, deprecated_member_use, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mini_hackathon_jawan_pakistan/DataSource/DataMap.dart';
import 'package:mini_hackathon_jawan_pakistan/widgits/theme.dart';

class ItemCard extends StatefulWidget {
  Map productInformation;
  ItemCard({Key? key, required this.productInformation}) : super(key: key);

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {

    void AddToCart(){
      setState(() {
        Map<dynamic, dynamic> item = widget.productInformation;
        print(widget.productInformation);
        Datamap.DataSource()["cartList" as List<dynamic>][Datamap.DataSource()["cartList"].length].add(item);
        print(Datamap.DataSource()["cartList"]);
      });
    } 

    return Container(
      margin: EdgeInsets.only(bottom: 15),
      alignment: Alignment.center,
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Center(
            child: Container(
              width: 280,
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 10),
              height: 290,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(0, 7), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite,
                                color: AppTheme.primarybackground,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                AddToCart();
                              },
                              icon: Icon(
                                Icons.shopping_cart_rounded,
                                color: AppTheme.primarybackground,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Image.asset(
                          widget.productInformation["productImage"],
                          width: 180,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              widget.productInformation["productName"],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Text(
                              '\$ ${widget.productInformation["productPrice"]}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
