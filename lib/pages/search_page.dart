import 'package:flutter/material.dart';
import 'package:food_e/pages/search_input_page.dart';
import 'package:food_e/theme.dart';
import 'package:food_e/widget/bottom_floating.dart';
import 'package:food_e/widget/categories_show.dart';
import 'package:food_e/widget/recent_search.dart';
import 'package:food_e/widget/search.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: BottomFloating(
        isHome: false,
        isSearch: true,
        isBasket: false,
        isLove: false,
        isUser: false,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: whiteColor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 70,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SearchInputPage();
                    },
                  ),
                );
              },
              child: Search(
                placeHolderText: 'Cuisine / Dish',
                isClicked: false,
                isType: false,
              ),
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
                  style: labelText.copyWith(
                    color: primaryColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                CategoriesShow('Breakfast', 95.0, false),
                CategoriesShow('Fastfood', 90.0, false),
                CategoriesShow('Launch', 75.0, false),
                CategoriesShow('South Indian', 120.0, false),
                CategoriesShow('North Indian', 118.0, false),
                CategoriesShow('Dinner', 78.0, false),
                CategoriesShow('Pure Veg', 95.0, false),
                CategoriesShow('Non Veg', 92.0, false),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'RECENTS',
                  style: labelText.copyWith(
                    color: darkColor,
                  ),
                ),
                Text(
                  'CLEAR ALL',
                  style: labelText.copyWith(color: primaryColor),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            RecentSearch('Biryani'),
            SizedBox(
              height: defaultMargin,
            ),
            RecentSearch(
              'Dosa',
            ),
            SizedBox(
              height: defaultMargin,
            ),
            RecentSearch('Veg Pakoda'),
            SizedBox(
              height: defaultMargin,
            ),
            RecentSearch('Chicken Tikka'),
            SizedBox(
              height: defaultMargin,
            ),
            RecentSearch('Tandoori'),
            SizedBox(
              height: defaultMargin,
            ),
            RecentSearch('Falooda'),
            SizedBox(
              height: 143,
            ),
          ],
        ),
      )),
    );
  }
}
