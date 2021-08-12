import 'package:flutter/material.dart';
import 'package:food_e/theme.dart';
import 'package:food_e/widget/basket_card.dart';
import 'package:food_e/widget/bottom_floating.dart';
import 'package:food_e/widget/button_bottom.dart';

class BasketPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      floatingActionButton: BottomFloating(
        isHome: false,
        isSearch: false,
        isBasket: true,
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
                height: 50,
              ),
              Text(
                'HEADER',
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
                price: '10.00',
                isLove: false,
                total: 2,
              ),
              SizedBox(
                height: 47,
              ),
              BasketCard(
                imageUrl: 'assets/images/grilled.png',
                name: 'Grilled Salmon',
                price: '45.00',
                isLove: false,
                total: 3,
              ),
              Spacer(),
              Text(
                'TOTAL',
                style: headingThreeText.copyWith(
                  color: darkColor,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '\$ 65.00',
                style: headingOneText.copyWith(
                  color: secondaryColor,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 40,
                width: double.infinity,
                child: RaisedButton(
                  onPressed: () {},
                  color: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'PROCEED TO CHECKOUT',
                    style: headingThreeText.copyWith(
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
