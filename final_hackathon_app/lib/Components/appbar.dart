import 'package:final_hackathon_app/Config/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(100.h);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: false,
      leading: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Builder(
          builder: (context) => IconButton(
            icon: SvgPicture.asset(
              primary_drawer_logo,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      actions: [
        Container(
          padding: EdgeInsets.only(right: 20.w),
          child: SvgPicture.asset(
            logo_small,
            semanticsLabel: 'Appbar Logo',
            fit: BoxFit.scaleDown,
          ),
        ),
      ],
    );
  }
}
