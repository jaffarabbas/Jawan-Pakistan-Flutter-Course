// ignore_for_file: prefer_const_constructors_in_immutables, file_names, must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'dart:html';

import 'package:flutter/material.dart';

class FavorateAppCollection extends StatefulWidget {
  Map foodProductInformation;
  FavorateAppCollection({Key? key, required this.foodProductInformation})
      : super(key: key);

  @override
  _FavorateAppCollectionState createState() => _FavorateAppCollectionState();
}


class _FavorateAppCollectionState extends State<FavorateAppCollection> {
  List<Widget> FoodRating(int rating){
    List<Widget> lst = [];
    for (var i = 0; i < rating; i++) {
      lst.add(Icon(Icons.star,size: 20,color: Colors.yellowAccent,));
    }
    return lst;
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: 180,
          height: 100,
          child: Center(
            child: Stack(
              fit: StackFit.expand,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              overflow: Overflow.visible,
              children: [
                Positioned(
                  top: 90,
                  child: Container(
                    width: 180,
                    height: 100,
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${widget.foodProductInformation["name"]}',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '${widget.foodProductInformation["description"]}',
                          style: TextStyle(
                              color: Colors.white54,
                              fontWeight: FontWeight.w300,
                              fontSize: 13),
                        ),
                        Row(
                          children: FoodRating(widget.foodProductInformation[""])
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 30,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 3,
                            color: Colors.black45,
                            spreadRadius: 0.1)
                      ],
                    ),
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage:
                          AssetImage(widget.foodProductInformation["image"]),
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 3,
                            color: Colors.black45,
                            spreadRadius: 0.1)
                      ],
                    ),
                    child: CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.white,
                      child: RichText(
                        text: TextSpan(
                          text: '\$',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                          children: [
                            TextSpan(
                              text: '${widget.foodProductInformation["price"]}',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
     ],
    );
  }
}

