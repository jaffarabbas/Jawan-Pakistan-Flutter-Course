// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MultiExpanded extends StatefulWidget {
  const MultiExpanded({Key? key}) : super(key: key);

  @override
  _MultiExpandedState createState() => _MultiExpandedState();
}

class _MultiExpandedState extends State<MultiExpanded> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.deepPurple,
              height: 100,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    '$index',
                    style: TextStyle(color: Colors.deepPurple),
                  ),
                  tileColor: Colors.black,
                );
              },
            ),
            // Expanded(
            //   child: ListView.builder(
            //   // shrinkWrap: true,
            //   // physics: NeverScrollableScrollPhysics(),
            //   itemCount: 20,
            //   itemBuilder: (context, index) {
            //     return ListTile(
            //       title: Text(
            //         '$index',
            //         style: TextStyle(color: Colors.deepPurple),
            //       ),
            //       tileColor: Colors.black,
            //     );
            //   },
            // ),
            // ),
          ],
        ),
      ),
    );
  }
}
