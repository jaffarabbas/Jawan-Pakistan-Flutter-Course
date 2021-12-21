// ignore_for_file: file_names

import 'package:fb_login_app/Components/Custom/Button/ButtonColored.dart';
import 'package:fb_login_app/Components/Custom/TextFeild/TextFeild_1.dart';
import 'package:fb_login_app/Config/size_config.dart';
import 'package:fb_login_app/Model/TextFeildModel.dart';
import 'package:fb_login_app/Pages/Login/SignIn/SignInSrceen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextFeildModel forgetPassword = TextFeildModel(label: "Email");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(),
        body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: getSize(true, .1),
                    vertical: getSize(false, .05)),
                child: Column(children: [
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(bottom: getSize(false, .0525)),
                      child: Text(
                        "Forget Password",
                        style: Theme.of(context).textTheme.headline2,
                      )),
                  TextFeild1(reference: forgetPassword),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: getSize(false, .0125),
                    ),
                    child: ButtonColored(function: firebaseSendMail, text: "Send Mail"),
                  ),
                ]))));
  }

  firebaseSendMail() async {
    final _auth = FirebaseAuth.instance;

    final _formkey = GlobalKey<FormState>();
    if (_formkey.currentState!.validate()) {
      await _auth
          .sendPasswordResetEmail(email: forgetPassword.value)
          .then((uid) => {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const SignInSrceen()))
              })
          .catchError((e) {});
    }
  }
}
