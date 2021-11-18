// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mini_hackathon_jawan_pakistan/pages/home.dart';
import 'package:mini_hackathon_jawan_pakistan/widgits/theme.dart';

class ItemDetials extends StatefulWidget {
  Map productInformation;
  ItemDetials({Key? key, required this.productInformation}) : super(key: key);

  @override
  _ItemDetialsState createState() => _ItemDetialsState();
}

class _ItemDetialsState extends State<ItemDetials> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.primarybackground,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(bottom: 15),
        alignment: Alignment.center,
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Center(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            padding: EdgeInsets.all(20),
                            child: Image.asset(
                                widget.productInformation["productImage"],
                                width: 180),
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
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: 300,
                            child: Text(
                              '${widget.productInformation["decription"]}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.black54
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
