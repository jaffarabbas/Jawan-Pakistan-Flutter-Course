// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MediaQueryCheck2 extends StatefulWidget {
  const MediaQueryCheck2({Key? key}) : super(key: key);

  @override
  _MediaQueryCheck2State createState() => _MediaQueryCheck2State();
}

class _MediaQueryCheck2State extends State<MediaQueryCheck2> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        kToolbarHeight;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(10),
              color: Colors.orange,
              // height: height * 0.7,
              // width: width * 0.9,
              height: 400.,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.deepPurple,
                    // height: height * 0.4,
                    // width: width * 0.4,
                  ),
                  Container(
                    color: Colors.red,
                    // height: height * 0.4,
                    // width: width * 0.4,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
