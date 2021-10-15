// ignore_for_file: prefer_const_constructors_in_immutables, file_names, prefer_initializing_formals, must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AppChatTile extends StatefulWidget {
  String username, userImage, userRecentMessage,userLastSeen;
  AppChatTile(
      {Key? key,
      required this.username,
      required this.userImage,
      required this.userRecentMessage,
      required this.userLastSeen
      })
      : super(key: key);
  @override
  _AppChatTileState createState() => _AppChatTileState();
}

class _AppChatTileState extends State<AppChatTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.username),
      subtitle: Text(widget.userRecentMessage),
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(widget.userImage),
      ),
      trailing: Column(
        children: [
          Text(widget.userLastSeen),
        ],
      ),
    );
  }
}
