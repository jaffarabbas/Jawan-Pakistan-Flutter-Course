import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  getUser() async {
    var userList = [];
    var user = await http.get(Uri.http("jsonplaceholder.typicode.com", "users"));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}