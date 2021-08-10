import 'package:flutter/material.dart';
import 'package:food_e/theme.dart';
import 'package:food_e/widget/button_bottom.dart';
import 'package:food_e/widget/header.dart';
import 'package:food_e/widget/text_field_and_label.dart';

class PaymentSetupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: 50,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Header(
                headerTitle: 'PAYMENT SETUP',
                isSubTitle: false,
                subTitle: '',
              ),
              Column(
                children: [
                  TextFieldAndLabel(
                    label: 'CARD NUMBER',
                    infoText: 'XXXX - XXXX - XXXX',
                    isPassword: false,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: ((MediaQuery.of(context).size.width -
                                    (2 * defaultMargin)) /
                                2) -
                            10.5,
                        child: TextFieldAndLabel(
                          label: 'EXPIRED DATE',
                          infoText: 'MM / YY',
                          isPassword: false,
                        ),
                      ),
                      Container(
                        width: ((MediaQuery.of(context).size.width -
                                    (2 * defaultMargin)) /
                                2) -
                            10.5,
                        child: TextFieldAndLabel(
                          label: 'CVV',
                          infoText: 'X X X',
                          isPassword: false,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ButtonBottom('ADD CARD'),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Skip for now',
                    style: bodyText.copyWith(
                      color: grayColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
