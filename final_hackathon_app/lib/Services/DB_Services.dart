// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:jf_ecommerce_app/Model/ModelClasses.dart';
// import 'package:flutter/cupertino.dart';

// class DB_Services {
//   final FirebaseFirestore services = FirebaseFirestore.instance;

//   void setData(String collect, String docs, var data) {
//     // services.collection(collect).doc(docs).collection().add(data);
//   }

//   getUserData(String uid) async {
//     CollectionReference _collectionRef = FirebaseFirestore.instance
//         .collection("User")
//         .doc(uid)
//         .collection("${uid}UserDetails");

//     QuerySnapshot querySnapshot = await _collectionRef.get();
//     final allData = querySnapshot.docs.map((doc) => doc.data()).toList();

//     print(allData);
//     return allData[0];
//   }

//   void storeUser(Map<String, dynamic> userInfo) {
//     services
//         .collection("User")
//         .doc(userInfo["uid"])
//         .collection("${userInfo["uid"]}UserDetails")
//         .add(userInfo);
//   }
// }
