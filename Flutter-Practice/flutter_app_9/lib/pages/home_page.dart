// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unnecessary_new, non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controller = new TextEditingController();
  TextEditingController updateController = new TextEditingController();
  final Stream<QuerySnapshot> taskStream =
      FirebaseFirestore.instance.collection('task').snapshots();
  //collection refrence
  CollectionReference taskRefrence =
      FirebaseFirestore.instance.collection('task');
  addData() async {
    await FirebaseFirestore.instance.collection('task').add({
      'task': controller.value.text,
      'date':
          '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}-${DateTime.now()}'
    });
    controller.clear();
  }

  Future<void> deleteTask(String id) {
    return taskRefrence.doc(id).delete();
  }

  Future<void> updateUser(String id) {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Container(
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(hintText: "Enter Password"),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              child: ElevatedButton(
                onPressed: () {
                  addData();
                  _showMyDialog("Added Text", false);
                },
                child: Text(
                  "Insert Data",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
                child: StreamBuilder<QuerySnapshot>(
              stream: taskStream,
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
                    data["id"] = document.id;
                    return CardItem(data, deleteTask,UpdateTask,updateController);
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

Widget CardItem(Map data, Function delete,Function update,TextEditingController controller) => Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("${data["task"]}", style: TextStyle(fontSize: 20)),
            Row(
              children: [
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                       controller.text = data["task"];
                       update("${data["id"]}");
                    },
                    child: Text(
                      "Edit",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      delete("${data["id"]}");
                    },
                    child: Text(
                      "Delete",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
