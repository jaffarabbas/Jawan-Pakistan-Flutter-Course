// ignore_for_file: file_names

import 'package:fb_login_app/Components/Custom/Button/Button.dart';
import 'package:fb_login_app/Components/Custom/Button/ButtonColored.dart';
import 'package:fb_login_app/Config/size_config.dart';
import 'package:fb_login_app/Pages/Login/SignIn/SignInSrceen.dart';
import 'package:fb_login_app/Pages/Login/SignUp/SignUpSrceen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroSrceen extends StatelessWidget {
  const IntroSrceen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IntroSrceenDetails(),
      )
    );
  }
}

class IntroSrceenDetails extends StatefulWidget {
  const IntroSrceenDetails({Key? key}) : super(key: key);

  @override
  _IntroSrceenDetailsState createState() => _IntroSrceenDetailsState();
}

class _IntroSrceenDetailsState extends State<IntroSrceenDetails> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Welcome to "),
                  Text(
                    "Kolachi",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ],
              ),
              Text(
                "Explore Us",
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
          SizedBox(
            child: Image.asset("assets/images/firstTime.png"),
            width: getSize(true, 0.8),
            height: getSize(false, 0.4),
          ),
          Column(
            children: [
              SizedBox(
                width: getSize(true, .7),
                child: ButtonColored(
                    text: "Login",
                    function: () {
                      onClick(true);
                    }),
              ),
              SizedBox(
                height: getSize(false, .01),
              ),
              ButtonText(
                  text: "Signup",
                  function: () {
                    onClick(false);
                  })
            ],
          ),
        ],
      );
  }

  void onClick(bool direction) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) =>
                direction ? const SignInSrceen() : const SignUpSrceen()));
  }
}
