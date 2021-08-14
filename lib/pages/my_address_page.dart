import 'package:flutter/material.dart';
import 'package:food_e/pages/address_page.dart';
import 'package:food_e/theme.dart';
import 'package:food_e/widget/bottom_floating.dart';
import 'package:food_e/widget/header.dart';

class MyAddressPage extends StatelessWidget {
  final bool fromAkun;

  MyAddressPage({
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
                headerTitle: 'MY ADDRESS',
                isSubTitle: false,
                subTitle: '',
                isBack: true,
              ),
              Spacer(),
              Text(
                'PARTY PLACE',
                style: labelText.copyWith(
                  color: secondaryColor,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Apt. 12, Watson Bldg., 13th Ave. and St. James St., 406035',
                style: bodyText.copyWith(
                  color: darkColor,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'OFFICE',
                style: labelText.copyWith(
                  color: darkColor,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Suite 03, Johnson Business Park, 554537',
                style: bodyText.copyWith(
                  color: grayColor,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'HOME',
                style: labelText.copyWith(
                  color: darkColor,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Apt. 12, Watson Bldg., 13th Ave. and St. James St., 406035',
                style: bodyText.copyWith(
                  color: grayColor,
                ),
              ),
              SizedBox(
                height: 50,
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
                          return AddressPage(
                            isSkip: false,
                            isBack: true,
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
                    'ADD NEW ADDRESS',
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
