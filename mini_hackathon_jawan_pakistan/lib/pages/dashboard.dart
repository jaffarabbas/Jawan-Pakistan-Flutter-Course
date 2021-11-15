// import 'package:flutter/material.dart';
// import 'package:mini_hackathon_jawan_pakistan/DataSource/DataMap.dart';
// import 'package:mini_hackathon_jawan_pakistan/pages/cart.dart';
// import 'package:mini_hackathon_jawan_pakistan/widgits/home/itemCard.dart';
// import 'package:mini_hackathon_jawan_pakistan/widgits/home/sliderCard.dart';

// class Dashboard extends StatefulWidget {
//   const Dashboard({Key? key}) : super(key: key);

//   @override
//   _DashboardState createState() => _DashboardState();
// }

// class _DashboardState extends State<Dashboard> {
//   Widget CartTileView() {
//     return ListView.builder(
//         shrinkWrap: true,
//         // physics: NeverScrollableScrollPhysics(),
//         scrollDirection: Axis.horizontal,
//         itemCount: Datamap.DataSource()["slider"].length,
//         itemBuilder: (context, index) {
//           return SLiderCard(
//               productInformation: Datamap.DataSource()["slider"][index]);
//         });
//   }

//   Widget ItemTileView() {
//     return ListView.builder(
//         shrinkWrap: true,
//         // physics: NeverScrollableScrollPhysics(),
//         itemCount: Datamap.DataSource()["items"].length,
//         itemBuilder: (context, index) {
//           return ItemCard(
//               productInformation: Datamap.DataSource()["items"][index]);
//         });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return C
//   }
// }
