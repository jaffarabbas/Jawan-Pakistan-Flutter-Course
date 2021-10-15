import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgits/AppListTile.dart';

class ChatList extends StatefulWidget {
  const ChatList({ Key? key }) : super(key: key);

  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AppChatTile(username: 'jaffar',userImage: '',userRecentMessage: 'hello',userLastSeen: '',)
        ],
      ),
    );
  }
}