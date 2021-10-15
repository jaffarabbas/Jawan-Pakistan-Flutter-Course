// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WHATSAPP'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_enhance),),
              Tab(text : 'CHATS'),
              Tab(text : 'STATUS'),
              Tab(text : 'CALLS'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Text('sadasd'),
            Text('sadasd'),
            Text('sadasd2'),
            Text('sadasd3'),
          ],
        ),
      ),
    );
  }
}