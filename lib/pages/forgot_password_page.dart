import 'package:flutter/material.dart';
import 'package:food_e/theme.dart';
import 'package:food_e/widget/button_bottom.dart';
import 'package:food_e/widget/header.dart';
import 'package:food_e/widget/text_field_and_label.dart';

class ForgotPasswordPage extends StatelessWidget {
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
                headerTitle: 'FORGOT PASSWORD',
                isSubTitle: true,
                subTitle: 'We’ll send a password reset link to your email.',
              ),
              SizedBox(
                height: 145,
              ),
              TextFieldAndLabel(
                infoText: 'johndoe@email.com',
                label: 'EMAIL',
                isPassword: false,
              ),
              SizedBox(
                height: 30,
              ),
              ButtonBottom('SEND A EMAIL'),
            ],
          ),
        ),
      ),
    );
  }
}
