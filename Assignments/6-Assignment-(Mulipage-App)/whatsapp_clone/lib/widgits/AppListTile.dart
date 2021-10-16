// ignore_for_file: prefer_const_constructors_in_immutables, file_names, prefer_initializing_formals, must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/chat_page.dart';

class AppChatTile extends StatefulWidget {
  Map<dynamic, dynamic> userInformation;
  AppChatTile(
      {Key? key,
      required this.userInformation,
      })
      : super(key: key);
  @override
  _AppChatTileState createState() => _AppChatTileState();
}

class _AppChatTileState extends State<AppChatTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => ChatScreen(),
      child: ListTile(
        title: Text(widget.userInformation["username"]),
        subtitle: Text(''),
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage(widget.userInformation["image"]),
        ),
        trailing: Column(
          children: [
            Text(''),
          ],
        ),
      ),
    );
  }
}
