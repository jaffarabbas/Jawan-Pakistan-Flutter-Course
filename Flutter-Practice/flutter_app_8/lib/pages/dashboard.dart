import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  String email;
  Dashboard({ Key? key ,required this.email}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(widget.email),
        ),
      ),
    );
  }
}