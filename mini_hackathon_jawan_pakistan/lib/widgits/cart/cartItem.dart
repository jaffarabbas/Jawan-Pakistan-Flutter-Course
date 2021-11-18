// ignore_for_file: file_names, deprecated_member_use, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mini_hackathon_jawan_pakistan/DataSource/CartList.dart';
import 'package:mini_hackathon_jawan_pakistan/DataSource/DataMap.dart';
import 'package:mini_hackathon_jawan_pakistan/DataSource/FavouriteList.dart';
import 'package:mini_hackathon_jawan_pakistan/pages/detials.dart';
import 'package:mini_hackathon_jawan_pakistan/widgits/theme.dart';

class CartItem extends StatefulWidget {
  // Function addCounterBar;
  Map productInformation;
  Function Refresh;
  Function DeleteCart;
  Function DeleteFavourate;
  bool isFavouritePage;
  CartItem(
      {Key? key,
      required this.productInformation,
      required this.Refresh,
      required this.DeleteCart,
      required this.DeleteFavourate,
      required this.isFavouritePage})
      : super(key: key);

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    int idOfCartItem;
    bool checkFavorite = widget.productInformation["isFavourite"];
    @override
    void initState() {
      super.initState();
      checkFavorite = widget.productInformation["isFavourite"];
      print("after : ${checkFavorite}");
    }

    void AddToCart() {
      setState(() {
        // widget.addCounterBar();
        CartList.cart.add(widget.productInformation);
        widget.productInformation["isInCart"] = true;
        print(widget.productInformation);
        widget.Refresh();
      });
    }

    void DeleteFromCart(int index) {
      setState(() {
        print("delete");
        CartList.cart.removeAt(index);
        CartList.cartCount = CartList.cart.length;
      });
    }

    void DeleteFromFavorites(int index) {
      setState(() {
        print("delete");
        FavouriteList.favourite.removeAt(index);
      });
    }

    void addToFavouriteList() {
      setState(() {
        if (widget.productInformation["isFavourite"] == false) {
          widget.productInformation["isFavourite"] = true;
        } else {
          widget.productInformation["isFavourite"] = false;
        }
        if (widget.productInformation["isFavourite"] == true) {
          FavouriteList.favourite.add(widget.productInformation);
        } else {
          FavouriteList.favourite
              .removeWhere((element) => element["isFavourite"] == false);
        }
      });
      print(FavouriteList.favourite);
    }

    return Container(
      margin: EdgeInsets.only(bottom: 15),
      alignment: Alignment.center,
      child: InkWell(
        focusColor: Colors.white,
        hoverColor: Colors.white,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ItemDetials(productInformation: widget.productInformation)),
          );
        },
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Center(
              child: Container(
                width: 280,
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 10),
                height: 290,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 7), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              widget.isFavouritePage
                                  ? !widget.productInformation["isFavourite"]
                                      ? IconButton(
                                          onPressed: () {
                                            addToFavouriteList();
                                            checkFavorite =
                                                widget.productInformation[
                                                    "isFavourite"];
                                            print("after : ${checkFavorite}");
                                          },
                                          icon: Icon(
                                            checkFavorite
                                                ? Icons.favorite
                                                : Icons.favorite_border,
                                            color: AppTheme.primarybackground,
                                          ),
                                        )
                                      : IconButton(
                                          onPressed: () {
                                            DeleteFromFavorites(
                                                widget.DeleteFavourate());
                                            widget.Refresh();
                                          },
                                          icon: Icon(
                                            Icons.delete,
                                            color: AppTheme.primarybackground,
                                          ),
                                        )
                                  : IconButton(
                                      onPressed: () {
                                        addToFavouriteList();
                                        checkFavorite = widget
                                            .productInformation["isFavourite"];
                                        print("after : ${checkFavorite}");
                                      },
                                      icon: Icon(
                                        checkFavorite
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        color: AppTheme.primarybackground,
                                      ),
                                    ),
                              widget.productInformation["isInCart"]
                                  ? IconButton(
                                      onPressed: () {
                                        DeleteFromCart(widget.DeleteCart());
                                        widget.Refresh();
                                      },
                                      icon: Icon(
                                        Icons.delete,
                                        color: AppTheme.primarybackground,
                                      ),
                                    )
                                  : IconButton(
                                      onPressed: () {
                                        AddToCart();
                                      },
                                      icon: Icon(
                                        Icons.shopping_cart_rounded,
                                        color: AppTheme.primarybackground,
                                      ),
                                    ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            padding: EdgeInsets.all(20),
                            child: Image.asset(
                                widget.productInformation["productImage"],
                                width: 180),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                widget.productInformation["productName"],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text(
                                '\$ ${widget.productInformation["productPrice"]}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
