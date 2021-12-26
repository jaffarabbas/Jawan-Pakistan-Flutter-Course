// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unnecessary_new, non_constant_identifier_names, invalid_return_type_for_catch_error, must_be_immutable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_10/pages/chat_page.dart';
import 'package:flutter_app_10/pages/select_authentication.dart';

class HomePage extends StatefulWidget {
  User user;
  HomePage({Key? key, required this.user}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controller = new TextEditingController();
  TextEditingController updateController = new TextEditingController();
  late User currentUser;
  @override
  void initState() {
    super.initState();
    currentUser = widget.user;
  }

  addData() async {
    await FirebaseFirestore.instance
        .collection('task')
        .doc(currentUser.email)
        .collection('${currentUser.email}Task')
        .add({
      'task': controller.value.text,
      'date':
          '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}-${DateTime.now()}'
    });
    controller.clear();
  }

  Future<void> deleteTask(String id) {
    CollectionReference taskRefrence = FirebaseFirestore.instance
        .collection('task')
        .doc(currentUser.email)
        .collection('${currentUser.email}Task');
    return taskRefrence.doc(id).delete();
  }

  Future<void> updateUser(String id) {
    CollectionReference taskRefrence = FirebaseFirestore.instance
        .collection('task')
        .doc(currentUser.email)
        .collection('${currentUser.email}Task');
    return taskRefrence
        .doc(id)
        .update({
          'task': updateController.value.text,
          'date':
              '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}-${DateTime.now()}'
        })
        .then((value) => print("User Updated"))
        .catchError((error) => print("Failed to update user: $error"));
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

  Future<void> UpdateTask(String id) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Update Task'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Container(
                  child: Container(
                    child: TextField(
                      controller: updateController,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      updateUser(id);
                      Navigator.of(context).pop();
                      _showMyDialog("Update Text", false);
                      controller.clear();
                    },
                    child: Text(
                      "Update Data",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  String ChatRommId(String userid,String FriendId) {
    if(userid[0].toLowerCase().codeUnits[0] > FriendId[0].toLowerCase().codeUnits[0]){
      return "$userid$FriendId";
    }else{
      return "$FriendId$userid";
    }
  }

  Future<void> AddChatRoomCollection(String FriendId) async {
   var chatRoom = FirebaseFirestore.instance.collection('ChatMessages');
   if(chatRoom.doc().id != ChatRommId(currentUser.uid, FriendId)){
      await chatRoom.doc(ChatRommId(currentUser.uid,FriendId)).set({
          'CurrentUser': currentUser.uid,
          'FriendId': FriendId,
          'timeStamp': DateTime.now()
        });
   }
  }

  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> userStream =
        FirebaseFirestore.instance.collection('users').snapshots();
    return Scaffold(
      appBar: AppBar(
        title: Text("Chatt APP"),
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
          children: [
            Card(
              child: Text('Email : ${currentUser.email}',
                  style: TextStyle(color: Colors.blueAccent, fontSize: 16)),
            ),
            Container(
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
                  children:
                      snapshot.data!.docs.map((DocumentSnapshot document) {
                    Map<String, dynamic> data =
                        document.data()! as Map<String, dynamic>;
                    data['chatRoomId'] = ChatRommId(currentUser.uid, data["userId"]);
                    return CardItem(data,context,AddChatRoomCollection);
                  }).toList(),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}

Widget CardItem(Map data,BuildContext context,createChatRoom) => Container(
      child: InkWell(
        onTap: (){
          createChatRoom(data['userId']);
          print(data);
          Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    ChatPage(user: data),
              ),
            );
        },
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(),
              Container(
                padding: EdgeInsets.only(left: 20),
                  child: Text("${data["username"]}",
                      style: TextStyle(fontSize: 20))),
            ],
          ),
        ),
      ),
    );
