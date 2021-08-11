import 'package:flutter/material.dart';
import 'package:food_e/theme.dart';
import 'package:food_e/widget/icon_floating.dart';

class BottomFloating extends StatelessWidget {
  final bool isHome;
  final bool isSearch;
  final bool isBasket;
  final bool isLove;
  final bool isUser;

  BottomFloating({
    this.isHome,
    this.isSearch,
    this.isBasket,
    this.isLove,
    this.isUser,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 27),
      color: whiteColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconFloating(
            imageUrl: 'assets/icons/home.png',
            isActive: isHome,
          ),
          IconFloating(
            imageUrl: 'assets/icons/search.png',
            isActive: isSearch,
          ),
          IconFloating(
            imageUrl: 'assets/icons/basket.png',
            isActive: isBasket,
          ),
          IconFloating(
            imageUrl: 'assets/icons/favourite.png',
            isActive: isLove,
          ),
          IconFloating(
            imageUrl: 'assets/icons/user.png',
            isActive: isUser,
          ),
        ],
      ),
    );
  }
}
