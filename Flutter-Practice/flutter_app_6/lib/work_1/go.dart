// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Godart extends StatefulWidget {
  Godart({ Key? key }) : super(key: key);

  @override
  _GodartState createState() => _GodartState();
}

class _GodartState extends State<Godart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
          child: ElevatedButton(
            onPressed: (){
              
            },
            child: Text('go'),
          ),
        ),
      ),
    );
  }
}