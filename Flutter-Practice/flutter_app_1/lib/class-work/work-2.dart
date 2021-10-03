// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class HomeList extends StatelessWidget {
  HomeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Text('My App').toString(),
      home:Scaffold(
        appBar: AppBar(
          title : Text('My App'),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                height: 100,
                width : 300,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(top: 10),
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color : Colors.red,
                ),
                child: Text('Jaffar',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
               Container(
                height: 100,
                width : 300,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(top: 10),
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color : Colors.red,
                ),
                child: Text('Jaffar',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
               Container(
                height: 100,
                width : 300,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(top: 10),
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color : Colors.red,
                ),
                child: Text('Jaffar',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
               Container(
                height: 100,
                width : 300,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(top: 10),
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color : Colors.red,
                ),
                child: Text('Jaffar',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
               Container(
                height: 100,
                width : 300,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(top: 10),
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color : Colors.red,
                ),
                child: Text('Jaffar',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
