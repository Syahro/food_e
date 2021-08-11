import 'package:flutter/material.dart';
import 'package:food_e/theme.dart';
import 'package:food_e/widget/bottom_floating.dart';
import 'package:food_e/widget/button_bottom.dart';

class DetailMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      floatingActionButton: BottomFloating(
        isHome: true,
        isSearch: false,
        isBasket: false,
        isLove: false,
        isUser: false,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                Image.asset(
                  'assets/images/baner_detail.png',
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: defaultMargin,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Salmon',
                                style: headingOneText.copyWith(
                                  color: darkColor,
                                ),
                              ),
                              Text(
                                'The Nautilus',
                                style: bodyText.copyWith(
                                  color: secondaryColor,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: 12,
                              ),
                              Image.asset(
                                'assets/icons/clock.png',
                                width: 18.33,
                                height: 18.33,
                                color: secondaryColor,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '34 mins',
                                style: bodyText.copyWith(
                                  color: secondaryColor,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'DESCRIPTION',
                        style: labelText.copyWith(
                          color: darkColor,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Non odit iusto delectus maxime sit placeat voluptatum dolorem. Dolores quos rerum iusto. Beatae totam ab veritatis aliquid tenetur qui ut. Quia ut dolorum enim et. Exercitationem occaecati eum est ex qui harum aliquam.',
                        style: bodyText.copyWith(
                          color: grayColor,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'QUANTITY',
                              style: labelText.copyWith(
                                color: primaryColor,
                              ),
                            ),
                          ),
                          Text(
                            'SUB TOTAL',
                            style: labelText.copyWith(
                              color: darkColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Container(
                              height: 40,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: lightColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: defaultMargin,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      '1',
                                      style: inputText.copyWith(
                                        color: darkColor,
                                      ),
                                    ),
                                    Spacer(),
                                    Image.asset(
                                      'assets/icons/substract.png',
                                      width: 18.33,
                                      height: 18.33,
                                      color: primaryColor,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(
                                      'assets/icons/add.png',
                                      width: 18.33,
                                      height: 18.33,
                                      color: primaryColor,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Container(
                              height: 40,
                              width: double.infinity,
                              color: whiteColor,
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  '\$ 15.00',
                                  style: headingTwoTet.copyWith(
                                    color: primaryColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ButtonBottom('ADD TO BASKET'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
                vertical: 50,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 22,
                    width: 22,
                    decoration: BoxDecoration(
                      color: whiteColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/icons/left.png',
                        width: 18,
                        height: 27,
                        color: whiteColor,
                      ),
                    ),
                  ),
                  Container(
                    height: 22,
                    width: 22,
                    decoration: BoxDecoration(
                      color: whiteColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/icons/options.png',
                        width: 22,
                        height: 18,
                        color: whiteColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
