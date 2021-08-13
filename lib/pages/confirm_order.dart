import 'package:flutter/material.dart';
import 'package:food_e/theme.dart';

class ConfirmOrder extends StatelessWidget {
  final bool isError;

  ConfirmOrder({
    this.isError,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isError ? errorColor : successColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                isError ? 'SOMETHING WENT WRONG!' : 'ORDER CONFIRMED!',
                style: headingOneText.copyWith(
                  color: whiteColor,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Image.asset(
                isError
                    ? 'assets/images/oops.png'
                    : 'assets/images/confirm.png',
                width: 157,
                height: 157,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                isError
                    ? 'Something went wrong. We’ll look into the issue\nright away.'
                    : 'Hang on Tight! We’ve received your order and\nwe’ll bring it to you ASAP!',
                style: bodyText.copyWith(
                  color: whiteColor,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 95,
              ),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width - (2 * defaultMargin),
                child: RaisedButton(
                  onPressed: () {},
                  color: whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    isError ? 'TRY AGAIN' : 'TRACK MY ORDER',
                    style: headingThreeText.copyWith(color: primaryColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
