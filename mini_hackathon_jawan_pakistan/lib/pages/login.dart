// ignore_for_file: deprecated_member_use, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:mini_hackathon_jawan_pakistan/containers/_textFeild.dart';
import 'package:mini_hackathon_jawan_pakistan/pages/home.dart';

void main() => runApp(LoginPage());

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    bool stateOfContainer = false;
    final _formKey = GlobalKey<FormState>();
    
    
  ValidateFeilds(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        stateOfContainer = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
      setState(() {
        stateOfContainer = false;
      });
    }
  }

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Image.asset("images/layout/bg.png"),
            Positioned(
              top: 20,
              right: 40,
              child: Image.asset("images/layout/logo_w.png"),
            ),
            Center(
              child: Form(
                key: _formKey,
                child: Container(
                  margin: EdgeInsets.only(top: 250),
                  height: 300,
                  child: Column(
                    children: [
                      Feilds(
                          // controller: userController,
                          hint: "Enter Username",
                          isPass: false),
                      Feilds(
                          // controller: passController,
                          hint: "Enter Password",
                          isPass: true),
                      Material(
                        color: stateOfContainer
                            ? Colors.green[300]
                            : Colors.deepPurple,
                        borderRadius: BorderRadius.circular(
                          stateOfContainer ? 80 : 12,
                        ),
                        child: InkWell(
                          onTap: () => ValidateFeilds(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            height: 50,
                            width: stateOfContainer ? 50 : 150,
                            alignment: Alignment.center,
                            child: stateOfContainer
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    'LOGIN HERE',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: stateOfContainer ? 12 : 15,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
