// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mini_hackathon_jawan_pakistan/widgits/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    Icons.person,
                    color: AppTheme.primarybackground,
                    size: 40,
                  ),
                ),
              ),
            ),
            ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  title: Text(
                    "Email",
                  ),
                  subtitle: Text(
                    "gamaportal8@gmail.com"
                  ),
                ),
                ListTile(
                  title: Text(
                    "Phone Number",
                  ),
                  subtitle: Text(
                    "03022988820"
                  ),
                ),
                ListTile(
                  title: Text(
                    "Date of Birth",
                  ),
                  subtitle: Text(
                    "6-1-2000"
                  ),
                ),
                ListTile(
                  title: Text(
                    "City",
                  ),
                  subtitle: Text(
                    "Karachi"
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}