// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/chat_list.dart';

class HomePage extends StatelessWidget {
  HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'WhatsApp',
            style: TextStyle(
              fontSize: 22
            )
          ),
          actions: [
            Icon(
              Icons.search,
              size: 27,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.more_vert,
              size: 27,
            ),
            SizedBox(
              width: 20,
            )
          ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt_rounded),),
              Tab(
                child: Text(
                  'CHATS',
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'STATUS',
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'CALLS',
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ChatList(),
            ChatList(),
            ChatList(),
            ChatList(),
          ],
        ),
      ),
    );
  }
}