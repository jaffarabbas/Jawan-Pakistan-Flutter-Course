// ignore_for_file: override_on_non_overriding_member, file_names

import 'package:flutter/material.dart';
import 'package:mini_hackathon_jawan_pakistan/widgits/theme.dart';

class BootomNavigate extends StatefulWidget {
  const BootomNavigate({ Key? key }) : super(key: key);

  @override
  State<BootomNavigate> createState() => _BootomNavigateState();
}

class _BootomNavigateState extends State<BootomNavigate> {
  int currentBottomNavigationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: (index) => setState(() => currentBottomNavigationIndex = index),
        currentIndex: currentBottomNavigationIndex,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w600,
        ),
        selectedIconTheme: IconThemeData(color: AppTheme.primarybackground),
        unselectedIconTheme: IconThemeData(color: Colors.grey[400]),
        selectedFontSize: 12,
        unselectedFontSize: 12,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              size: 20,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 20,
            ),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_rounded,
              size: 20,
            ),
            label: 'profile',
          ),
        ],
      );
  }
}