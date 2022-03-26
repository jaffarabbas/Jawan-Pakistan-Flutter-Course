// import 'package:jf_ecommerce_app/Components/Custom/Function/FunctionFactory.dart';
// import 'package:jf_ecommerce_app/Pages/Login/Intro/Introduction.dart';
// import 'package:jf_ecommerce_app/Pages/MainScreen.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// class AuthClass {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final GoogleSignIn _googleSignIn = GoogleSignIn(
//     scopes: [
//       'email',
//       'https://www.googleapis.com/auth/contacts.readonly',
//     ],
//   );

//   final storage = new FlutterSecureStorage();
//   Future<void> googleSignIn(BuildContext context) async {
//     try {
//       GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
//       GoogleSignInAuthentication? googleSignInAuthentication =
//           await googleSignInAccount?.authentication;
//       AuthCredential credential = GoogleAuthProvider.credential(
//         accessToken: googleSignInAuthentication?.accessToken,
//         idToken: googleSignInAuthentication?.idToken,
//       );
//       if (googleSignInAccount != null) {
//         UserCredential userCredential =
//             await _auth.signInWithCredential(credential);
//         storeTokenAndData(userCredential);

//         await setUserInfo(userCredential);
//         Navigator.pushAndRemoveUntil(
//             context,
//             MaterialPageRoute(
//                 builder: (builder) =>
//                     MainScreen()), // HomeScreen(user: userCredential.user!)),
//             (route) => false);

//         final snackBar =
//             SnackBar(content: Text(userCredential.user?.displayName ?? ""));
//         ScaffoldMessenger.of(context).showSnackBar(snackBar);
//       }
//     } catch (e) {
//       print("here---->");
//       final snackBar = SnackBar(content: Text(e.toString()));
//       ScaffoldMessenger.of(context).showSnackBar(snackBar);
//     }
//   }

//   Future<void> signOut({required BuildContext context}) async {
//     try {
//       await _googleSignIn.signOut();
//       await _auth.signOut();
//       await storage.delete(key: "token");
//       Navigator.pushAndRemoveUntil(
//           context,
//           MaterialPageRoute(
//               builder: (builder) =>
//                   const IntroSrceen()), // HomeScreen(user: userCredential.user!)),
//           (route) => false);
//     } catch (e) {
//       final snackBar = SnackBar(content: Text(e.toString()));
//       ScaffoldMessenger.of(context).showSnackBar(snackBar);
//     }
//   }

//   void storeTokenAndData(UserCredential userCredential) async {
//     print("storing token and data");
//     await storage.write(
//         key: "token", value: userCredential.credential?.token.toString());
//     await storage.write(
//         key: "usercredential", value: userCredential.toString());
//   }

//   Future<String?> getToken() async {
//     return await storage.read(key: "token");
//   }

//   void showSnackBar(BuildContext context, String text) {
//     final snackBar = SnackBar(content: Text(text));
//     ScaffoldMessenger.of(context).showSnackBar(snackBar);
//   }
// }
