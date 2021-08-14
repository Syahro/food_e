import 'package:flutter/material.dart';
import 'package:food_e/theme.dart';
import 'package:food_e/widget/header.dart';

class ContactSupportPage extends StatelessWidget {
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
            children: [
              SizedBox(
                height: 50,
              ),
              Header(
                headerTitle: 'CONTACT SUPPORT',
                isSubTitle: false,
                subTitle: '',
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/call.png',
                    width: 22,
                    height: 22,
                    color: primaryColor,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    '+00 123 456 7890',
                    style: bodyText.copyWith(
                      color: darkColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/email_sent.png',
                    width: 22,
                    height: 22,
                    color: primaryColor,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'support@foode.com',
                    style: bodyText.copyWith(
                      color: darkColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/chat.png',
                    width: 22,
                    height: 22,
                    color: primaryColor,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'chat on WhatsApp',
                    style: bodyText.copyWith(
                      color: darkColor,
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
