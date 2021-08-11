import 'package:flutter/material.dart';
import 'package:food_e/theme.dart';
import 'package:food_e/widget/bottom_floating.dart';
import 'package:food_e/widget/recent_search.dart';
import 'package:food_e/widget/search.dart';

class SearchInputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      floatingActionButton: BottomFloating(
        isHome: false,
        isSearch: true,
        isBasket: false,
        isLove: false,
        isUser: false,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Search(
              placeHolderText: 'Cuisine / Dish',
              isClicked: true,
              isType: false,
            ),
            SizedBox(
              height: 30,
            ),
            RecentSearch('Chicken Tikka'),
            SizedBox(
              height: 20,
            ),
            RecentSearch('Tandoori'),
            SizedBox(
              height: 20,
            ),
            RecentSearch('Aloo Tikki'),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      )),
    );
  }
}
