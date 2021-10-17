// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class ImagesPractice extends StatelessWidget {
  ImagesPractice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Container(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network('https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80'),
            Image.asset('Images/m1.jpg'),
          ],
        ),
      ),
    );
  }
}
