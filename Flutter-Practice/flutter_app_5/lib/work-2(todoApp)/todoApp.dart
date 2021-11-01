// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  TodoState createState() => TodoState();
}

class TodoState extends State<Todo> {
  var lst = [];
  var getValue = "";
  TextEditingController txtController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    void Submit() {
      var text = txtController.value.text;
      if (text.length > 0) {
        setState(() {
          print(txtController.value.text);
          lst.add(txtController.value.text);
        });
      }
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.red),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.red),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              controller: txtController,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    Submit();
                    txtController.clear();
                  },
                  child: Container(
                    color: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    child: Text(
                      'Submit',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      lst.clear();
                    });
                  },
                  child: Container(
                    color: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    child: Text(
                      'Reset',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            ListView.builder(
              itemCount: lst.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Text(
                  "${index + 1} : ${lst[index]}",
                  style: TextStyle(fontSize: 30),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
