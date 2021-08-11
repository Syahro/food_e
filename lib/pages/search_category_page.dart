import 'package:flutter/material.dart';
import 'package:food_e/theme.dart';
import 'package:food_e/widget/bottom_floating.dart';
import 'package:food_e/widget/categories_show.dart';
import 'package:food_e/widget/menu_card.dart';
import 'package:food_e/widget/search.dart';

class SearchCategoryPage extends StatelessWidget {
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
        child: ListView(
          children: [
            Padding(
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
                    isClicked: false,
                    isType: false,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'CATEGORIES',
                        style: labelText.copyWith(
                          color: darkColor,
                        ),
                      ),
                      Text(
                        'VIEW ALL',
                        style: labelText.copyWith(color: primaryColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CategoriesShow('Launch', 114, true),
                        SizedBox(
                          width: defaultMargin,
                        ),
                        CategoriesShow('Breakfast', 107, false),
                        SizedBox(
                          width: defaultMargin,
                        ),
                        CategoriesShow('Fastfood', 102, false),
                        SizedBox(
                          width: defaultMargin,
                        ),
                      ],
                    ),
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
                  Text(
                    'You’ve reached the end of the list',
                    style: bodyText.copyWith(
                      color: grayColor,
                    ),
                  ),
                  SizedBox(
                    height: 150,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
