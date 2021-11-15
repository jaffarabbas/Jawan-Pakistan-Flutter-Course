// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mini_hackathon_jawan_pakistan/widgits/theme.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: Container(
          height: 50,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(5),
                child: Icon(Icons.close_rounded, color: AppTheme.primarybackground,),
              ),
              Container(
                width: 300,
                height: 40,
                child: TextField(
                    decoration: InputDecoration(
                    enabledBorder:  OutlineInputBorder(
                        borderSide: BorderSide(width: 0, color: Colors.white) 
                    ),
                  hintText: "Enter Name or Address",
                  hintStyle: TextStyle(
                    color: AppTheme.primarybackground,
                  ),
                )),
              ),
              Icon(
                Icons.search,
                color: AppTheme.primarybackground,
              )
            ],
          ),
        ),
      ),
    );
  }
}