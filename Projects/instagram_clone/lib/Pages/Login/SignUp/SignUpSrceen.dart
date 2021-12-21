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
import 'package:fb_login_app/Pages/Login/SocialMeida/SocialMedia.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpSrceen extends StatefulWidget {
  const SignUpSrceen({Key? key}) : super(key: key);

  @override
  _SignUpSrceenState createState() => _SignUpSrceenState();
}

class _SignUpSrceenState extends State<SignUpSrceen> {
  List<TextFeildModel> controller = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = [
      TextFeildModel(label: "Name"),
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
              TextFeild1(reference: controller[1]),
              PasswordFeild(reference: controller[2]),
              Padding(
                padding: EdgeInsets.symmetric(vertical: getSize(false, .0125)),
                child: ButtonColored(function: onSigupClick, text: "Register"),
              ),
              const SocialMedia(
                isSignIN: true,
              ),
            ],
          ),
        ),
      ),
    );
  }

  onSigupClick() {
    bool isError = false;
    var isName = validtionConstantName(controller[0].value);
    var isEmail = validtionConstantEmail(controller[1].value);
    var isPassword = validtionConstantPassword(controller[2].value);


    if(isName[0]){
      setState(() {
        controller[0].isError = isName[0];
        controller[0].errorMessage = isName[1];
        isError =  isName[0];
      });
    }

    if (isEmail[0]) {
      setState(() {
        controller[1].isError = isEmail[0];
        controller[1].errorMessage = isEmail[1];
        isError =  isEmail[0];
      });
    }

    if(isPassword[0]){
      setState(() {
        controller[2].isError = isPassword[0];
        controller[2].errorMessage = isPassword[1];
        isError =  isPassword[0];
      });
    }

   
    if (!isError) {
      onSigUp();
    }
  }

  onSigUp() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: controller[1].value, password: controller[2].value);
      
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) =>HomeScreen(user: userCredential.user!)));
    
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        alertBox1(
            context, "weak-password", "The password provided is too weak.");
      } else if (e.code == 'email-already-in-use') {
        alertBox1(
            context, "email-already-in-use", "The account already exists for that email.");
      }
    } catch (e) {
      print(e);
    }
  }
}
