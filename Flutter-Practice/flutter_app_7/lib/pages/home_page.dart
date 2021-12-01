// ignore_for_file: unnecessary_new, curly_braces_in_flow_control_structures, prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app_7/models/User.dart';
import 'package:flutter_app_7/services/fetchApi.dart';
import 'package:flutter_app_7/widgits/userList.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  bool state;
  HomePage({Key? key,required this.state}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  getUser() async {
    ApiService _apiServices = new ApiService();
    List<Users> dataSource = await _apiServices.fetchData(widget.state);
    return dataSource;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api Fetching'),
      ),
      body: FutureBuilder(
        future: getUser(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return UserList(
                itemCount: snapshot.data.length,
                snapshot: snapshot.data,
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
