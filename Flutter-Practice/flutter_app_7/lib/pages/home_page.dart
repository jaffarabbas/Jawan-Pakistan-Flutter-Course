// ignore_for_file: unnecessary_new, curly_braces_in_flow_control_structures

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app_7/models/User.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  getUser() async {
    var userList = [];
    var responce =
        await http.get(Uri.http("jsonplaceholder.typicode.com", "users"));
    var jsonCode = jsonDecode(responce.body);
    for (var i in jsonCode) {
      User u = new User(i["name"], i["email"]);
      userList.add(u);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getUser(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return Text('${snapshot.error}');
          } else {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("${snapshot.data![index].name}"),
                  subtitle: Text("${snapshot.data![index].email}"),
                );
              },
            );
          }
        },
      ),
    );
  }
}
