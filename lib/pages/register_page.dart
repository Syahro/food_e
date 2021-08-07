import 'package:flutter/material.dart';
import 'package:food_e/theme.dart';
import 'package:food_e/widget/text_field_and_label.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
                vertical: 50,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/icons/close.png',
                    width: 22,
                    height: 22,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Register',
                    style: headingOne.copyWith(
                      fontSize: 36,
                      color: darkColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 130,
                  ),
                  TextFieldAndLabel(
                    label: 'FULL NAME',
                    infoText: 'John Doe',
                    isPassword: false,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFieldAndLabel(
                    label: 'EMAIL',
                    infoText: 'johndoe@email.com',
                    isPassword: false,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFieldAndLabel(
                    label: 'PHONE',
                    infoText: '+00 123 456 7890',
                    isPassword: false,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFieldAndLabel(
                    label: 'PASSWORD',
                    infoText: 'Password',
                    isPassword: true,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 40,
                    width:
                        MediaQuery.of(context).size.width - (2 * defaultMargin),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'REGISTER',
                        style: headingOne.copyWith(
                          fontSize: 18,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text.rich(
                        TextSpan(
                            text: 'Already have an account? ',
                            style: headingOne.copyWith(
                              fontSize: 14,
                              color: grayColor,
                            ),
                            children: [
                              TextSpan(
                                text: 'Login',
                                style: headingOne.copyWith(
                                  fontSize: 14,
                                  color: secondaryColor,
                                ),
                              ),
                            ]),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
