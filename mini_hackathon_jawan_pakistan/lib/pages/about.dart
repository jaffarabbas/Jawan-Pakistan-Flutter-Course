// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:mini_hackathon_jawan_pakistan/widgits/theme.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backwardsCompatibility: true,       
        backgroundColor:AppTheme.primarybackground,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)
      ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: AppTheme.primarybackground,
              width: 400,
              height: 300,
              child: Container(
                padding: EdgeInsets.all(50),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.mail_outline,
                    color: AppTheme.primarybackground,
                    size: 40,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Icon(Icons.location_on, color: AppTheme.primarybackground),
                SizedBox(
                  height: 20,
                ),
                Text('1399 city hotel'),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Open Map"),
                ),
                Icon(Icons.mobile_friendly_sharp,
                    color: AppTheme.primarybackground),
                SizedBox(
                  height: 20,
                ),
                Text('0301298880'),
                SizedBox(
                  height: 20,
                ),
                Icon(Icons.history, color: AppTheme.primarybackground),
                SizedBox(
                  height: 20,
                ),
                Text('Monday - Friday'),
                SizedBox(
                  height: 20,
                ),
                Text('09:00-17:00'),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
