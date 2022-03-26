import 'package:final_hackathon_app/Config/constants.dart';
import 'package:final_hackathon_app/pages/home_screen/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProductGrid extends StatefulWidget {
  const ProductGrid({Key? key}) : super(key: key);

  @override
  _ProductGridState createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {
  var twoCount = 1;
  var threeCount = 0;

  int indexIncreatement() {
    int result = 0;
    if (twoCount != 2) {
      result = 2;
      setState(() {
        twoCount++;
      });
    } else if (threeCount != 2) {
      result = 3;
      setState(() {
        threeCount++;
      });
      if (threeCount == 2 && twoCount == 2) {
        setState(() {
          twoCount = 0;
          threeCount = 0;
        });
      }
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top:100.h),
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: StaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 20,
              crossAxisSpacing: 30,
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: indexIncreatement(),
                  child: ProductCard(image: c1,name: 'Suv',),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: indexIncreatement(),
                  child: ProductCard(image: c2,name: 'Vigo',),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: indexIncreatement(),
                  child: ProductCard(image: c3,name: 'Landcruzar',),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: indexIncreatement(),
                  child: ProductCard(image: c4,name: 'Kia',),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: indexIncreatement(),
                  child: ProductCard(image: c1,name: 'Suv',),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: indexIncreatement(),
                  child: ProductCard(image: c2,name: 'Vigo',),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: indexIncreatement(),
                  child: ProductCard(image: c3,name: 'Landcruzar',),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: indexIncreatement(),
                  child: ProductCard(image: c4,name: 'Kia',),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
