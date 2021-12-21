// ignore_for_file: file_names

import 'package:fb_login_app/Components/Custom/Alert/AlertBox1.dart';
import 'package:fb_login_app/Components/Custom/Button/ButtonColored.dart';
import 'package:fb_login_app/Components/Custom/TextFeild/PasswordFeild.dart';
import 'package:fb_login_app/Components/Custom/TextFeild/TextFeild_1.dart';
import 'package:fb_login_app/Config/Validition.dart';
import 'package:fb_login_app/Config/constants.dart';
import 'package:fb_login_app/Config/size_config.dart';
import 'package:fb_login_app/Model/TextFeildModel.dart';
import 'package:fb_login_app/Pages/Home/HomeScreen.dart';
import 'package:fb_login_app/Pages/Login/SignIn/ForgetPassword.dart';
import 'package:fb_login_app/Pages/Login/SocialMeida/SocialMedia.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignInSrceen extends StatefulWidget {
  const SignInSrceen({Key? key}) : super(key: key);

  @override
  _SignInSrceenState createState() => _SignInSrceenState();
}

class _SignInSrceenState extends State<SignInSrceen> {
  List<TextFeildModel> controller = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = [
      TextFeildModel(label: "Email"),
      TextFeildModel(label: "Password")
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: getSize(true, .1), vertical: getSize(false, .05)),
          child: Column(
            children: [
              Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(bottom: getSize(false, .0125)),
                  child: Text(
                    "Signup",
                    style: Theme.of(context).textTheme.headline2,
                  )),
              TextFeild1(reference: controller[0]),
              PasswordFeild(reference: controller[1]),
              Container(
                  margin: EdgeInsets.only(top: getSize(false, .0125)),
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                      onTap: () {
                        goToOtherRouter(const ForgetPassword());
                      },
                      child: Text(
                        "Forget Password ?",
                        style: Theme.of(context).textTheme.bodyText1,
                      ))),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: getSize(false, .0125),
                ),
                child: ButtonColored(function: onSigupClick, text: "Login"),
              ),
              const SocialMedia(
                isSignIN: false,
              ),
            ],
          ),
        ),
      ),
    );
  }

  goToOtherRouter(Widget route) {
    Navigator.push(
        context, MaterialPageRoute(builder: (BuildContext context) => route));
  }

  onSigupClick() async {
    bool isError = false;
    var isEmail = validtionConstantEmail(controller[0].value);
    var isPassword = validtionConstantPassword(controller[1].value);


    if (isEmail[0]) {
      setState(() {
        controller[0].isError = isEmail[0];
        controller[0].errorMessage = isEmail[1];
        isError =  isEmail[0];
      });
    }

    if(isPassword[0]){
      setState(() {
        controller[1].isError = isPassword[0];
        controller[1].errorMessage = isPassword[1];
        isError =  isPassword[0];
      });
    }

    if (!isError) onSigIn();
  }

  onSigIn() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: controller[0].value, password: controller[1].value);

      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => HomeScreen(user: userCredential.user!)));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        alertBox1(context, "user Not Found", 'No user found for that email.');
      } else if (e.code == 'wrong-password') {
        alertBox1(context, "Wrong Password",
        'Wrong password provided for that user.');
      }
    }
  }
}
