import 'package:flutter/material.dart';
import 'package:food_e/theme.dart';
import 'package:food_e/widget/icon_floating.dart';

class BottomFloating extends StatelessWidget {
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
            isActive: true,
          ),
          IconFloating(
            imageUrl: 'assets/icons/search.png',
            isActive: false,
          ),
          IconFloating(
            imageUrl: 'assets/icons/basket.png',
            isActive: false,
          ),
          IconFloating(
            imageUrl: 'assets/icons/favourite.png',
            isActive: false,
          ),
          IconFloating(
            imageUrl: 'assets/icons/user.png',
            isActive: false,
          ),
        ],
      ),
    );
  }
}
