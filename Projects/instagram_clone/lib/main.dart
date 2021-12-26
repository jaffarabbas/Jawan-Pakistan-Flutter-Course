
import 'package:instagram_clone/Config/size_config.dart';
import 'package:instagram_clone/Config/theme.dart';
import 'package:instagram_clone/Pages/Post/post.dart';
import 'package:instagram_clone/Pages/Splash/Splash.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.

  
  FirebaseAuth fbAuth = FirebaseAuth.instance; 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KOLACHI',
      theme: theme(),
      home: PostPage(),
    );
  }
}

