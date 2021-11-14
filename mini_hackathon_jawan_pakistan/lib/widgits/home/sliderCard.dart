// ignore_for_file: file_names, deprecated_member_use, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';

class SLiderCard extends StatefulWidget {
  Map productInformation;
  SLiderCard({Key? key,required this.productInformation}) : super(key: key);

  @override
  _SLiderCardState createState() => _SLiderCardState();
}

class _SLiderCardState extends State<SLiderCard> {
  @override
  Widget build(BuildContext context) {
    var FontAwesomeIcons;
    return Container(
      padding: EdgeInsets.all(30),
      margin: EdgeInsets.only(bottom: 15),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Center(
            child: Container(
              width: 280,
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
                children: [
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
                            '${widget.productInformation["productCount"]} Items Remaining',
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
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
