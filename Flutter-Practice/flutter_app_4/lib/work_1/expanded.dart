import 'package:flutter/material.dart';

class ExpandedApp extends StatefulWidget {
  const ExpandedApp({ Key? key }) : super(key: key);

  @override
  _ExpandedAppState createState() => _ExpandedAppState();
}

class _ExpandedAppState extends State<ExpandedApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.black
            ),
          ),
           Expanded(
            child: Container(
              color: Colors.red
            ),
          ),
           Expanded(
            child: Container(
              color: Colors.yellow
            ),
          ),
        ],
      ),
    );
  }
}