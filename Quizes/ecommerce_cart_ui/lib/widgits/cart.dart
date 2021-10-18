// ignore_for_file: prefer_const_constructors_in_immutables, deprecated_member_use, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartTile extends StatefulWidget {
  Map productInformation;
  CartTile({Key? key, required this.productInformation}) : super(key: key);

  @override
  _CartTileState createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  List<Widget> RatingStarsList(int rating) {
    List<Widget> lst = [];
    for (int i = 0; i < rating; i++) {
      lst.add(Icon(
        Icons.star,
        size: 15,
      ));
    }
    return lst;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Center(
            child: Container(
              width: 320,
              padding: EdgeInsets.only(left: 20),
              margin: EdgeInsets.only(top: 19),
              height: 130,
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
                crossAxisAlignment: widget.productInformation['isNew'] ? CrossAxisAlignment.start :  CrossAxisAlignment.center,
                children: [
                  widget.productInformation['isNew']
                      ? Container(
                          height: 20,
                          width: 40,
                          padding: EdgeInsets.only(top:4),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: Text('NEW',style:TextStyle(
                            color: Colors.white,
                            fontSize: 11
                          )),
                        )
                      : widget.productInformation['isExclusive'] ? Container(
                          height: 13,
                          width: 60,
                          padding: EdgeInsets.only(top:2),
                          margin: EdgeInsets.only(bottom: 10 , right: 22),
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
                          ),
                          alignment: Alignment.center,
                          child: Text('EXCLUSIVE',style:TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 7
                          )),
                      ) : Container(),
                  Row(
                    children: [
                      Image.asset(
                        widget.productInformation["productImage"],
                        width: 90,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                            widget.productInformation["productCategory"],
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          Row(
                              children: RatingStarsList(
                                  widget.productInformation["productRating"])),
                          SizedBox(
                            height: 7,
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
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: -19,
            child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.amber,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.shoppingBag),
                  iconSize: 21,
                  color: Colors.black,
                  padding: EdgeInsets.only(bottom: 3),
                )),
          )
        ],
      ),
    );
  }
}
