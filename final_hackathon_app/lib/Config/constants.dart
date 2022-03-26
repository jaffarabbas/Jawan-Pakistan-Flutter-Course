import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


//size configuration
const double width = 360;
const double height = 640;


const kPrimaryColor = Color(0xFF111015);
const kSecondaryColor = Color(0xFFF1F5F8);
const kPrimaryLightColor = Color(0xFFFFFFFF);

const kSecondaryFontColor = Color(0xFF626365);
const kTextColor = Color(0xFF111015);

const kAnimationDuration = Duration(milliseconds: 200);
const defaultDuration = Duration(milliseconds: 250);

double inputHintFontsize = 12.sp;
double buttonFontsize1 = 12.sp;
double productCardTitile = 15.sp;
const double fontSize = 16;
const double headingfontSize = 23;
const double iconSize = 12;
const double kiconSize = 24;

const double discount = 4.5;

List product = ["Men Shoes", "Women Shoes", "Kids Shoes"];

int isActive = 0;

const String logo_small = 'assets/logo/logo_small.svg';
const String logo_medium = 'assets/logo/logo_medium.svg';
const String logo_large = 'assets/logo/logo_large.svg';
const String home_logo = 'assets/logo/logo_home.svg';
const String primary_drawer_logo = 'assets/logo/primaryDrawerLogo.svg';
const String secondary_drawer_logo = 'assets/logo/secondaryDrawerLogo.svg';

const String main_background = 'assets/backgrounds/main_background.svg';

//product images 
const String c1 = "assets/images/c1.png";
const String c2 = "assets/images/c2.png";
const String c3 = "assets/images/c3.png";
const String c4 = "assets/images/c4.png";

//payment card_option
const String visa = 'assets/images/visa.png';
const String masterCard = 'assets/images/mastercard.png';
// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kShortNameError = "Name is too short (greater than 2)";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

// final otpInputDecoration = InputDecoration(
//   contentPadding:
//       EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
//   border: outlineInputBorder(),
//   focusedBorder: outlineInputBorder(),
//   enabledBorder: outlineInputBorder(),
// );

// OutlineInputBorder outlineInputBorder() {
//   return OutlineInputBorder(
//     borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
//     borderSide: BorderSide(color: kTextColor),
//   );
// }
