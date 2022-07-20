import 'package:flutter/material.dart';
import 'package:flutter_app_11/screen/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: HomeView(), 
    );
  }
}