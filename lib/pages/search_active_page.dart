import 'package:flutter/material.dart';
import 'package:food_e/pages/search_category_page.dart';
import 'package:food_e/theme.dart';
import 'package:food_e/widget/bottom_floating.dart';
import 'package:food_e/widget/categories_show.dart';
import 'package:food_e/widget/menu_card.dart';
import 'package:food_e/widget/search.dart';

class SearchActivePage extends StatelessWidget {
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
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: ListView(
            children: [
              SizedBox(
                height: 70,
              ),
              Search(
                placeHolderText: 'Sal',
                isClicked: true,
                isType: true,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    width: 114,
                    height: 40,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: CategoriesShow('Lunch', 114, true),
                  ),
                ],
              ),
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
                    color: secondaryColor,
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
                height: 10,
              ),
              Text(
                'Sorted: Price (Low - High)',
                style: bodyText.copyWith(color: secondaryColor),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MenuCard(
                    imageUrl: 'assets/images/egg_salad.png',
                    title: 'Egg Salad',
                    price: '5.00',
                  ),
                  MenuCard(
                    imageUrl: 'assets/images/grilled.png',
                    title: 'Grilled Salmon',
                    price: '15.00',
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'You’ve reached the end of the list',
                  style: bodyText.copyWith(color: grayColor),
                ),
              ),
              SizedBox(
                height: 180,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
