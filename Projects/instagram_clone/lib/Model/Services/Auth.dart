import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:instagram_clone/Pages/Home/HomeScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthClass {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );

  final storage = new FlutterSecureStorage();

  //facebook login

  void LoginWithFacebook(BuildContext context) async {
    try{
      final facebookLoginResult = await FacebookAuth.instance.login();
      final userData = await FacebookAuth.instance.getUserData();
      final facebookAuthCredentials = FacebookAuthProvider.credential(facebookLoginResult.accessToken!.token);
      UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(facebookAuthCredentials);

      //for future use
      // await FirebaseFirestore.instance.collection('users').add({
      //   'email':userData['email'];
      //   'imageUrl':userData['picture']['data']['url'];
      //   'name':userData['name'];
      // });

      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (builder) => HomeScreen(user: userCredential.user!)),
              (route) => false);

    }catch (e) {
      print("here---->");
      final snackBar = SnackBar(content: Text(e.toString()));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  Future<void> googleSignIn(BuildContext context) async {
    try {
      GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
      GoogleSignInAuthentication? googleSignInAuthentication =
          await googleSignInAccount?.authentication;
      AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication?.accessToken,
        idToken: googleSignInAuthentication?.idToken,
      );
      if (googleSignInAccount != null) {
        UserCredential userCredential =
            await _auth.signInWithCredential(credential);
        storeTokenAndData(userCredential);
        
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (builder) => HomeScreen(user: userCredential.user!)),
            (route) => false);

        final snackBar =
            SnackBar(content: Text(userCredential.user?.displayName ?? ""));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    } catch (e) {
      print("here---->");
      final snackBar = SnackBar(content: Text(e.toString()));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  Future<void> signOut({required BuildContext context}) async {
    try {
      await _googleSignIn.signOut();
      await _auth.signOut();
      await storage.delete(key: "token");
    } catch (e) {
      final snackBar = SnackBar(content: Text(e.toString()));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  void storeTokenAndData(UserCredential userCredential) async {
    print("storing token and data");
    await storage.write(
        key: "token", value: userCredential.credential?.token.toString());
    await storage.write(
        key: "usercredential", value: userCredential.toString());
  }

  Future<String?> getToken() async {
    return await storage.read(key: "token");
  }

  void showSnackBar(BuildContext context, String text) {
    final snackBar = SnackBar(content: Text(text));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}