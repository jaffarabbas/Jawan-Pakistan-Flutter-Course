// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


class MarginPadding extends StatelessWidget {
  MarginPadding({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              // padding: EdgeInsets.only(top:40),
              // margin: EdgeInsets.only(top: 90,left: 50),
              height: 100,
              width: 100,
              child: Text('Jaffar'),
              decoration: BoxDecoration(
                
               color: Colors.black,
              // borderRadius: BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(50)),
              // borderRadius: BorderRadius.only(topRight:Radius.elliptical(400, -1),topLeft: Radius.elliptical(100, 0)),
               //left to right color and only take a color
               gradient: LinearGradient(colors:[
                  Colors.orange,
                  Colors.yellow,
               ]),
              ),
            ),
            // Container(
            //   padding: EdgeInsets.only(top:40),
            //   margin: EdgeInsets.only(top: 90,left: 50),
            //   height: 100,
            //   width: 100,
            //   child: Text('Jaffar'),
            //   decoration: BoxDecoration(
            //    color: Colors.black,
            //    borderRadius: BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(50)),
            //   // borderRadius: BorderRadius.only(topRight:Radius.elliptical(100, 80),topLeft: Radius.elliptical(100, 80)),
            //    //left to right color and only take a color
            //    gradient: LinearGradient(colors:[
            //       Colors.orange,
            //       Colors.yellow,
            //    ]),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}