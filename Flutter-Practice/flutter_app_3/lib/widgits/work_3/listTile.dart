// ignore_for_file: prefer_const_constructors_in_immutables, file_names

import 'package:flutter/material.dart';

class AppListView extends StatefulWidget {
  AppListView({ Key? key }) : super(key: key);

  @override
  _AppListViewState createState() => _AppListViewState();
}

class _AppListViewState extends State<AppListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
        return ListTile(
          title: Text('asd'),
        );
      },),
    );
  }
}