import 'package:flutter/material.dart';
import 'package:food_e/pages/login_page.dart';
import 'package:food_e/theme.dart';
import 'package:food_e/widget/button_bottom.dart';
import 'package:food_e/widget/header.dart';
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
                  Header(
                    headerTitle: 'REGISTER',
                    isSubTitle: false,
                    subTitle: '',
                    isBack: false,
                  ),
                  SizedBox(
                    height: 130,
                  ),
                  TextFieldAndLabel(
                    label: 'FULL NAME',
                    infoText: 'John Doe',
                    isPassword: false,
                    isDrop: false,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFieldAndLabel(
                    label: 'EMAIL',
                    infoText: 'johndoe@email.com',
                    isPassword: false,
                    isDrop: false,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFieldAndLabel(
                    label: 'PHONE',
                    infoText: '+00 123 456 7890',
                    isPassword: false,
                    isDrop: false,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFieldAndLabel(
                    label: 'PASSWORD',
                    infoText: 'Password',
                    isPassword: true,
                    isDrop: false,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ButtonBottom('REGISTER'),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account? ',
                        style: bodyText.copyWith(
                          color: grayColor,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return LoginPage();
                          }));
                        },
                        child: Text(
                          'Login',
                          style: bodyText.copyWith(
                            color: secondaryColor,
                          ),
                        ),
                      ),
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
