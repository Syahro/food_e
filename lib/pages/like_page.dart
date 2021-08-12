import 'package:flutter/material.dart';
import 'package:food_e/theme.dart';
import 'package:food_e/widget/basket_card.dart';
import 'package:food_e/widget/bottom_floating.dart';

class LikePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      floatingActionButton: BottomFloating(
        isHome: false,
        isSearch: false,
        isBasket: false,
        isLove: true,
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
                height: 50,
              ),
              Text(
                'LIKED',
                style: headingOneText.copyWith(
                  color: darkColor,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              BasketCard(
                imageUrl: 'assets/images/egg_salad.png',
                name: 'Egg Salad',
                price: '5.00',
                isLove: true,
                total: 0,
              ),
              SizedBox(
                height: 47,
              ),
              BasketCard(
                imageUrl: 'assets/images/grilled.png',
                name: 'Grilled Salmon',
                price: '15.00',
                isLove: true,
                total: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
