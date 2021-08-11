import 'package:flutter/material.dart';
import 'package:food_e/theme.dart';
import 'package:food_e/widget/bottom_floating.dart';
import 'package:food_e/widget/menu_card.dart';
import 'package:food_e/widget/restaurant_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: BottomFloating(
        isHome: true,
        isSearch: false,
        isBasket: false,
        isLove: false,
        isUser: false,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: whiteColor,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Text.rich(
                        TextSpan(
                          text: 'Hello, ',
                          style: bigBodyText.copyWith(
                            color: darkColor,
                          ),
                          children: [
                            TextSpan(
                              text: 'John',
                              style: bigBodyText.copyWith(
                                color: primaryColor,
                              ),
                            ),
                            TextSpan(
                              text: '!',
                              style: bigBodyText.copyWith(
                                color: darkColor,
                              ),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Text(
                        'HOME',
                        style: labelText.copyWith(
                          color: secondaryColor,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        'assets/icons/location.png',
                        width: 16.5,
                        height: 19.9,
                        color: secondaryColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 138,
              color: Colors.transparent,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 138,
                    margin: EdgeInsets.symmetric(
                      horizontal: defaultMargin,
                    ),
                    decoration: BoxDecoration(
                      color: primaryLightColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                        left: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              text: 'GET ',
                              style: headingTwoTet.copyWith(
                                color: whiteColor,
                              ),
                              children: [
                                TextSpan(
                                  text: '50%',
                                  style: headingOneText.copyWith(
                                    color: darkColor,
                                  ),
                                ),
                                TextSpan(
                                  text: ' AS A Joining Bonus',
                                  style: headingTwoTet.copyWith(
                                    color: whiteColor,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'use code on checkout',
                            style: labelText.copyWith(
                              color: whiteColor,
                            ),
                          ),
                          Text(
                            'NEW50',
                            style: headingOneText.copyWith(
                              color: darkColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: -25,
                    child: Image.asset(
                      'assets/images/like_hand.png',
                      width: 289,
                      height: 162,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Recommended for you',
                    style: labelText.copyWith(
                      color: darkColor,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        MenuCard(
                          imageUrl: 'assets/images/egg_salad.png',
                          title: 'Egg Salad',
                          price: '5.00',
                        ),
                        SizedBox(
                          width: 21,
                        ),
                        MenuCard(
                          imageUrl: 'assets/images/grilled.png',
                          title: 'Grilled Salmon',
                          price: '15.00',
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'RESTAURANTS',
                    style: labelText.copyWith(
                      color: darkColor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: Row(
                      children: [
                        RestaurantCard(
                          imageUrl: 'assets/images/mcd.png',
                        ),
                        RestaurantCard(
                          imageUrl: 'assets/images/domino.png',
                        ),
                        RestaurantCard(
                          imageUrl: 'assets/images/burgerking.png',
                        ),
                        RestaurantCard(
                          imageUrl: 'assets/images/pizza.png',
                        ),
                        RestaurantCard(
                          imageUrl: 'assets/images/sleak.png',
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'POPULAR IN YOUR AREA',
                    style: labelText.copyWith(
                      color: darkColor,
                    ),
                  ),
                  SizedBox(
                    height: 80,
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
