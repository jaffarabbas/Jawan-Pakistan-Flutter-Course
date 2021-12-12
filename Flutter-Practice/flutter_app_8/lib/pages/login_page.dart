// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_8/pages/dashboard.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  void LoginIn() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: emailController.value.text,
              password: passwordController.value.text);
      _showMyDialog('User Inserted Succesfully', false);
      Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) =>
                Dashboard(email: emailController.value.text)));
      // if (FirebaseAuth.instance.currentUser != null) {
        
      // }
      emailController.clear();
      passwordController.clear();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        _showMyDialog('No user found for that email.', true);
      } else if (e.code == 'wrong-password') {
        _showMyDialog('Wrong password provided for that user.', true);
      }else if (e.code == '') {
        _showMyDialog('Empty Feilds.', true);
      }
    }
  }

  Future<void> _showMyDialog(String value, bool state) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(state ? 'Error Message' : 'Success Messages'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('$value'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login",
              style: TextStyle(fontSize: 30, color: Colors.blueAccent),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(hintText: "Enter Username"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(hintText: "Enter Password"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () {
                  LoginIn();
                },
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
