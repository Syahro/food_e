import 'package:flutter/material.dart';
import 'package:food_e/theme.dart';
import 'package:food_e/widget/button_bottom.dart';
import 'package:food_e/widget/header.dart';
import 'package:food_e/widget/text_field_and_label.dart';

class ResetPasswordPage extends StatelessWidget {
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
            children: [
              Header(
                headerTitle: 'RESET PASSWORD',
                isSubTitle: false,
                subTitle: '',
                isBack: false,
              ),
              SizedBox(
                height: 50,
              ),
              TextFieldAndLabel(
                label: 'NEW PASSWORD',
                infoText: 'Password',
                isPassword: true,
                isDrop: false,
              ),
              SizedBox(
                height: 30,
              ),
              TextFieldAndLabel(
                label: 'CONFIRM PASSWORD',
                infoText: 'Confirm Password',
                isPassword: true,
                isDrop: false,
              ),
              Spacer(),
              ButtonBottom('RESET PASSWORD'),
            ],
          ),
        ),
      ),
    );
  }
}
