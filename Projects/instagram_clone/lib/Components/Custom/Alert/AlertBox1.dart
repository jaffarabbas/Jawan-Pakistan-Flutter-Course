// ignore_for_file: file_names

import 'package:flutter/material.dart';

alertBox1(BuildContext context, String heading, String message) {
  AlertDialog alert = AlertDialog(
    title: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Icon(
          Icons.error,
          color: Colors.yellow[800],
          size: MediaQuery.of(context).size.height * .05,
        ),
        Text(heading),
      ],
    ),
    content: Text(message),
    actions: <Widget>[
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text('Close'),
      ),
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
