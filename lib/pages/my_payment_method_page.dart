import 'package:flutter/material.dart';
import 'package:food_e/pages/payment_setup_page.dart';
import 'package:food_e/theme.dart';
import 'package:food_e/widget/bottom_floating.dart';
import 'package:food_e/widget/header.dart';

class MyPaymentMethodPage extends StatelessWidget {
  final bool fromAkun;

  MyPaymentMethodPage({
    this.fromAkun,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      floatingActionButton: BottomFloating(
        isHome: false,
        isSearch: false,
        isBasket: fromAkun ? false : true,
        isLove: false,
        isUser: fromAkun ? true : false,
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
              Header(
                headerTitle: 'MY PAYMENT METHODS',
                isSubTitle: false,
                subTitle: '',
              ),
              Spacer(),
              Text(
                'CASH',
                style: labelText.copyWith(
                  color: darkColor,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Pay using cash',
                style: bodyText.copyWith(
                  color: grayColor,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'MASTERCARD - 0164',
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
                    'XXXX XXXX XXXX 0164',
                    style: bodyText.copyWith(
                      color: grayColor,
                    ),
                  ),
                  Text(
                    '09/21',
                    style: bodyText.copyWith(
                      color: grayColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'VISA - 3648',
                style: labelText.copyWith(
                  color: secondaryColor,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'XXXX XXXX XXXX 3648',
                    style: bodyText.copyWith(
                      color: darkColor,
                    ),
                  ),
                  Text(
                    '11/23',
                    style: bodyText.copyWith(
                      color: darkColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                height: 40,
                width: double.infinity,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return PaymentSetupPage(
                            isPaymentSetup: false,
                            headerTitle: 'ADD NEW CARD',
                            isSkip: false,
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
                    'ADD NEW PAYMENT METHOD',
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
