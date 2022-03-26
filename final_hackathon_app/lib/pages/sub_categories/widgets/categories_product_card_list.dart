import 'package:final_hackathon_app/pages/sub_categories/widgets/categories_product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: 5.h),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 30,
            itemBuilder: (context, index) {
              return CategoriesCard();
            },
          ),
        ),
      ),
    );
  }
}
