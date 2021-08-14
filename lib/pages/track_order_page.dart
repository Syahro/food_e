import 'package:flutter/material.dart';
import 'package:food_e/theme.dart';
import 'package:food_e/widget/header.dart';

class TrackOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
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
                headerTitle: '08 July 2021',
                isSubTitle: false,
                subTitle: '',
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '\$ 65.00',
                style: headingTwoTet.copyWith(
                  color: primaryColor,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Egg Salad',
                style: bodyText.copyWith(
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
                    '2 pieces',
                    style: headingThreeText.copyWith(
                      color: grayColor,
                    ),
                  ),
                  Text(
                    '\$ 10.00',
                    style: headingThreeText.copyWith(
                      color: grayColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Grilled Salmon',
                style: bodyText.copyWith(
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
                    '3 pieces',
                    style: headingThreeText.copyWith(
                      color: grayColor,
                    ),
                  ),
                  Text(
                    '\$ 45.00',
                    style: headingThreeText.copyWith(
                      color: grayColor,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
