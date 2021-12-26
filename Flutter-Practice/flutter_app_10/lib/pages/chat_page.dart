// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unnecessary_new, non_constant_identifier_names, invalid_return_type_for_catch_error, must_be_immutable, unrelated_type_equality_checks

import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_10/pages/select_authentication.dart';

class ChatPage extends StatefulWidget {
  Map user;
  ChatPage({Key? key, required this.user}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  TextEditingController controller = new TextEditingController();
  TextEditingController updateController = new TextEditingController();
  final ScrollController _scrollController = new ScrollController();
  late Map currentUser;
  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 100),
                        () => _scrollController.jumpTo(_scrollController.position.maxScrollExtent));
    currentUser = widget.user;
  }

  Future<void> _showMyDialog(String value, bool state) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(state ? 'Error Message' : 'Success Messages'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('$value'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  //signout
  void SingnOut() async {
    _showMyDialog("Do tou want to Logout?", false)
        .whenComplete(() => FirebaseAuth.instance.signOut());
  }

  //Messages
  Future<void> SendMessages(String id, String message) async {
    print("here");
    await FirebaseFirestore.instance
        .collection('ChatMessages')
        .doc(currentUser['chatRoomId'])
        .collection('Messages')
        .add({'userId': id, 'messages': message, 'timeStamp': DateTime.now()});
  }

  void isCurrentUser() async {
    await FirebaseFirestore.instance
        .collection('ChatMessages')
        .doc(currentUser['chatRoomId'])
        .get();
  }

  void ScrollToEnd(){
    Timer(Duration(milliseconds: 400),
                        () => _scrollController.jumpTo(_scrollController.position.maxScrollExtent));
  }

  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> userStream = FirebaseFirestore.instance
        .collection('ChatMessages')
        .doc(currentUser['chatRoomId'])
        .collection('Messages')
        .orderBy("timeStamp", descending: false)
        .snapshots();

    return Scaffold(
      appBar: AppBar(
        title: Text("${currentUser["username"]}"),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed: () {
              SingnOut();
            },
            icon: Icon(Icons.logout_outlined),
            color: Colors.white,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 580,
                child: StreamBuilder<QuerySnapshot>(
              stream: userStream,
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  return Text('Something went wrong');
                }
            
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
            
                return ListView(
                  shrinkWrap: true,
                  controller: _scrollController,
                  children:
                      snapshot.data!.docs.map((DocumentSnapshot document) {
                    Map<String, dynamic> data =
                        document.data()! as Map<String, dynamic>;
                    return CardItem(data, currentUser['userId']);
                  }).toList(),
                );
              },
            )),
            Container(
              width: 350,
              height: 70,
              child: Row(
                children: [
                  Container(
                    child: Container(
                      width: 300,
                      child: TextField(
                        controller: controller,
                        decoration: InputDecoration(hintText: "Enter Messages"),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 20, left: 10),
                    child: IconButton(
                      onPressed: () {
                        SendMessages(
                            currentUser['userId'], controller.value.text);
                            Timer(Duration(milliseconds: 400),
                        () => _scrollController.jumpTo(_scrollController.position.maxScrollExtent));
                        controller.clear();
                      },
                      icon: Icon(Icons.send_sharp),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget CardItem(Map data, currentId) => Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: data['userId'] == currentId
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          children: [
            Container(
                width: 200,

                decoration: BoxDecoration(
                    color: data['userId'] == currentId
                        ? Colors.black38
                        : Colors.greenAccent,
                    borderRadius:  data['userId'] == currentId ? BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20)) : 
                        BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))
                  ),
                padding: EdgeInsets.only(left: 20, top: 5,bottom:7),
                child: Text("${data["messages"]}",
                    style: TextStyle(fontSize: 20))),
          ],
        ),
      ),
    );
