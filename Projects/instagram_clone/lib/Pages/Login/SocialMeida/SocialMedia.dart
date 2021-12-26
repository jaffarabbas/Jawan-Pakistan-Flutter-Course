// ignore_for_file: file_names

import 'package:instagram_clone/Config/constants.dart';
import 'package:instagram_clone/Config/size_config.dart';
import 'package:instagram_clone/Config/theme.dart';
import 'package:instagram_clone/Model/Services/Auth.dart';
import 'package:instagram_clone/Pages/Login/SignIn/SignInSrceen.dart';
import 'package:instagram_clone/Pages/Login/SignUp/SignUpSrceen.dart';
import 'package:flutter/material.dart';

class SocialMedia extends StatefulWidget {
  final bool isSignIN;
  const SocialMedia({Key? key, required this.isSignIN}) : super(key: key);

  @override
  _SocialMediaState createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {
  AuthClass auth = AuthClass();

  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: getSize(false, .03),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(
              getSize(false, .001),
            ),
            child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.isSignIN
                        ? "Already have an account ? "
                        : "Don't have an account ? ",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  GestureDetector(
                      onTap: () {
                        goToOtherRouter(
                            widget.isSignIN ? const SignInSrceen() : const SignUpSrceen());
                      },
                      child: Text(widget.isSignIN ? "Signup" : "Signin"))
                ]),
          ),
          SizedBox(
            height: getSize(false, .07),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [getButton(true), getButton(false)],
          )
        ],
      ),
    );
  }

  getButton(bool isFacebook) {
    Widget toReturn;
    var primaryColor =
        isFacebook ? const Color(0xFF002EFF) : const Color(0xFFff0000);

    LinearGradient primaryGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: isFacebook
          ? const [Color(0xFF002EFF), Color(0xFF0087FF)]
          : const [Color(0xFFff0000), Color(0xFFff0000)],
    );

    toReturn = GestureDetector(
      onTap: () {isFacebook? auth.LoginWithFacebook(context) : auth.googleSignIn(context);},
      child: Container(
        decoration: BoxDecoration(
            gradient: primaryGradient, boxShadow: [getShadow(primaryColor)]),
        height: getSize(false, 0.0525),
        width: getSize(true, .35),
        alignment: Alignment.center,
        child: Text(
          isFacebook ? "Facebook" : "Google",
          style: const TextStyle(color: kPrimaryLightColor),
        ),
      ),
    );

    return toReturn;
  }

  goToOtherRouter(Widget route) {
    Navigator.push(
        context, MaterialPageRoute(builder: (BuildContext context) => route));
  }
}
