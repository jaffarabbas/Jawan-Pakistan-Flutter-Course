// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controller = new TextEditingController();
  addData() async {
    await FirebaseFirestore.instance.collection('task').add({
      'task': controller.value.text,
      'date':
          '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}-${DateTime.now()}'
    });
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
                },
                child: Text(
                  "Insert Data",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 54,
                itemBuilder: (context, index) {
                  return CardItem();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget CardItem() => Card(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("sad"),
          Row(
            children: [
              Container(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
