import 'package:flutter/material.dart';
import 'package:food_e/theme.dart';
import 'package:food_e/widget/header.dart';
import 'package:food_e/widget/text_field_and_label.dart';

class ChangePasswordPage extends StatelessWidget {
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
              headerTitle: 'CHANGE PASSWORD',
              isSubTitle: false,
              subTitle: '',
              isBack: true,
            ),
            Spacer(),
            TextFieldAndLabel(
              label: 'OLD PASSWORD',
              infoText: 'Old Password',
              isPassword: false,
              isDrop: false,
            ),
            SizedBox(
              height: 30,
            ),
            TextFieldAndLabel(
              label: 'NEW PASSWORD',
              infoText: 'New Password',
              isPassword: false,
              isDrop: false,
            ),
            SizedBox(
              height: 30,
            ),
            TextFieldAndLabel(
              label: 'CONFIRM PASSWORD',
              infoText: 'Confirm Password',
              isPassword: false,
              isDrop: false,
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 40,
              width: double.infinity,
              child: RaisedButton(
                onPressed: () {},
                color: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'CHANGE PASSWORD',
                  style: headingThreeText.copyWith(
                    color: whiteColor,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      )),
    );
  }
}
