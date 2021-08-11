import 'package:flutter/material.dart';
import 'package:food_e/theme.dart';
import 'package:food_e/widget/bottom_floating.dart';
import 'package:food_e/widget/categories_show.dart';
import 'package:food_e/widget/search.dart';

class SearchEmptyPage extends StatelessWidget {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 70,
              ),
              Search(
                placeHolderText: 'sdg',
                isClicked: true,
                isType: true,
              ),
              SizedBox(
                height: 30,
              ),
              CategoriesShow('Launch', 114, true),
              SizedBox(
                height: 34,
              ),
              Row(
                children: [
                  Text(
                    'SEARCH RESULTS',
                    style: labelText.copyWith(
                      color: darkColor,
                    ),
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/icons/sort.png',
                    width: 22,
                    height: 22,
                    color: grayColor,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    'assets/icons/filter.png',
                    width: 22,
                    height: 22,
                    color: secondaryColor,
                  ),
                ],
              ),
              SizedBox(
                height: 150,
              ),
              Center(
                child: Text(
                  'Sorry, there is nothing to sho for the search.',
                  style: bodyText.copyWith(
                    color: grayColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
