import 'package:flutter/material.dart';
import 'package:food_e/theme.dart';
import 'package:food_e/widget/button_bottom.dart';
import 'package:food_e/widget/header.dart';

class ReferFriendPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                headerTitle: 'REFER to a Friend',
                isSubTitle: false,
                subTitle: '',
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'REFER CODE',
                  style: labelText.copyWith(
                    color: primaryColor,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: lightColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Q8F4-B6S2-S6B3-N6Z5',
                        style: inputText.copyWith(
                          color: grayColor,
                        ),
                      ),
                      Image.asset(
                        'assets/icons/copy.png',
                        width: 22,
                        height: 22,
                        color: primaryColor,
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              ButtonBottom('SHARE THIS APP'),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
