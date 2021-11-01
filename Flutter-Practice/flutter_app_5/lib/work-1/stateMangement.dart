// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class SetStateMangement extends StatefulWidget {
  const SetStateMangement({Key? key}) : super(key: key);

  @override
  _SetStateMangementState createState() => _SetStateMangementState();
}

class _SetStateMangementState extends State<SetStateMangement> {
  var count = 0;
  void Increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$count',
              style: TextStyle(fontSize: 30),
            ),
            TextButton(
              onPressed: Increment,
              child: Text(
                'Submit',
                style: TextStyle(fontSize: 30),
              ),
            ),
            TextButton(
              onPressed: (){
                setState(() {
                  count = 0;
                });
              },
              child: Text(
                'Reset',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
