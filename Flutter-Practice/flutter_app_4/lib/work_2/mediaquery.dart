import 'package:flutter/material.dart';

class MediaQueryCheck extends StatefulWidget {
  const MediaQueryCheck({ Key? key }) : super(key: key);

  @override
  _MediaQueryCheckState createState() => _MediaQueryCheckState();
}

class _MediaQueryCheckState extends State<MediaQueryCheck> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.deepPurple,
              height: MediaQuery.of(context).size.height * 0.45,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
             Container(
              color: Colors.deepPurple,
              height: MediaQuery.of(context).size.height * 0.45,
            ),
          ],
        ),
      ),
    );
  }
}