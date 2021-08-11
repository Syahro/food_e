import 'package:flutter/material.dart';
import 'package:food_e/pages/search_category_page.dart';

import '../theme.dart';

class CategoriesShow extends StatelessWidget {
  final String title;
  final double widthSize;
  final bool isActive;

  CategoriesShow(
    this.title,
    this.widthSize,
    this.isActive,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: widthSize,
      decoration: BoxDecoration(
        color: isActive ? primaryColor : lightColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: isActive
          ? Padding(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SearchCategoryPage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Lunch',
                      style: bodyText.copyWith(color: whiteColor),
                    ),
                  ),
                  Image.asset(
                    'assets/icons/close.png',
                    width: 20,
                    height: 20,
                    color: whiteColor,
                  ),
                ],
              ),
            )
          : Center(
              child: Text(
                title,
                style: bodyText.copyWith(
                  color: darkColor,
                ),
              ),
            ),
    );
  }
}
