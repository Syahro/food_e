import 'package:flutter/material.dart';
import 'package:food_e/pages/confirm_order.dart';
import 'package:food_e/pages/my_address_page.dart';
import 'package:food_e/pages/my_payment_method_page.dart';
import 'package:food_e/theme.dart';
import 'package:food_e/widget/bottom_floating.dart';
import 'package:food_e/widget/header.dart';

class CheckoutPage extends StatelessWidget {
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
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Header(
                headerTitle: 'CHECKOUT',
                isSubTitle: false,
                subTitle: '',
                isBack: true,
              ),
              Spacer(),
              Text(
                'PRICE',
                style: labelText.copyWith(
                  color: darkColor,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '\$ 65.00',
                style: headingOneText.copyWith(
                  color: primaryColor,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'DELIVER TO',
                style: labelText.copyWith(
                  color: darkColor,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Home',
                    style: bodyText.copyWith(
                      color: darkColor,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return MyAddressPage(
                              fromAkun: false,
                            );
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Change',
                      style: bodyText.copyWith(
                        color: secondaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'PAYMENT METHOD',
                style: labelText.copyWith(
                  color: darkColor,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'XXXX XXXX XXXX 2538',
                    style: bodyText.copyWith(
                      color: darkColor,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return MyPaymentMethodPage(
                              fromAkun: false,
                            );
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Change',
                      style: bodyText.copyWith(
                        color: secondaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
                height: 40,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ConfirmOrder(
                            isError: false,
                          );
                        },
                      ),
                    );
                  },
                  onLongPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ConfirmOrder(
                            isError: true,
                          );
                        },
                      ),
                    );
                  },
                  color: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'CONFIRM ORDER',
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
