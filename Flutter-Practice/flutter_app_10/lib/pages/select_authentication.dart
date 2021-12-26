// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_10/pages/home_page.dart';
import 'package:flutter_app_10/pages/login_page.dart';
import 'package:flutter_app_10/pages/register_page.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthSelecter extends StatefulWidget {
  AuthSelecter({Key? key}) : super(key: key);

  @override
  _AuthSelecterState createState() => _AuthSelecterState();
}

class _AuthSelecterState extends State<AuthSelecter> {

Future<UserCredential> signInWithGoogle() async {
  // Create a new provider
  GoogleAuthProvider googleProvider = GoogleAuthProvider();

  googleProvider.addScope('https://www.googleapis.com/auth/contacts.readonly');

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithPopup(googleProvider);

  // Or use signInWithRedirect
  // return await FirebaseAuth.instance.signInWithRedirect(googleProvider);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Flutter CRUD App",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.only(top:20,bottom: 10),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterPage(),
                      ),
                    );
                  },
                  child:
                      Text("Register", style: TextStyle(color: Colors.white))),
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: Text("Login", style: TextStyle(color: Colors.white))),
            ),
            Container(
              margin: EdgeInsets.only(top:20,bottom: 10),
              child: ElevatedButton(
                  onPressed: () {
                    signInWithGoogle().then((value) => 
                     Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(user: FirebaseAuth.instance.currentUser as User),
                      ),
                    ),).catchError((e) => print(e));
                  },
                  child: Text("Google", style: TextStyle(color: Colors.white))),
            ),
          ],
        ),
      ),
    );
  }
}