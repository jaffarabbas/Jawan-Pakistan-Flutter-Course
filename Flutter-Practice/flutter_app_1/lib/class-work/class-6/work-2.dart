// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, must_be_immutable, non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_app_1/class-work/class-6/widgets/left_card.dart';
import 'package:flutter_app_1/class-work/class-6/widgets/right_card.dart';
import 'package:flutter_app_1/class-work/class-6/widgets/row_card_combiner.dart';

class HomeList extends StatelessWidget {
  HomeList({Key? key}) : super(key: key);
  //to populate a list of RowCombiner
  List<Widget> Populate(){
    List<Widget> lst = [];
    for (int i = 0; i < 5; i++){
      lst.add(RowCombiner());
    }
    return lst;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'work-2',
      home:Scaffold(
        appBar: AppBar(
          title : Text('My App'),
        ),
        body: Center(
            child: Column(
              children: Populate(),
            ),
          ),
      )
    );
  }
}
