import 'package:flutter/material.dart';
import 'package:food_e/theme.dart';
import 'package:food_e/widget/button_bottom.dart';
import 'package:food_e/widget/header.dart';

class EmailSentPage extends StatelessWidget {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(
                headerTitle: 'EMAIL SENT',
                isSubTitle: true,
                subTitle:
                    'We’ve sent you an email at user@email.com\nfor verification. Check your email for the\nverification link.',
              ),
              Spacer(),
              Text(
                '00:38',
                style: headingThreeText.copyWith(
                  color: secondaryColor,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Did not receive the email yet?',
                style: bodyText.copyWith(
                  color: darkColor,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Resend',
                style: bodyText.copyWith(
                  color: primaryColor,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ButtonBottom('OPEN EMAIL APP'),
            ],
          ),
        ),
      ),
    );
  }
}
