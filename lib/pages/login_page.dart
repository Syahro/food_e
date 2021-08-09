import 'package:flutter/material.dart';
import 'package:food_e/pages/forgot_password_page.dart';
import 'package:food_e/pages/register_page.dart';
import 'package:food_e/theme.dart';
import 'package:food_e/widget/button_bottom.dart';
import 'package:food_e/widget/header.dart';
import 'package:food_e/widget/text_field_and_label.dart';

class LoginPage extends StatelessWidget {
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
                headerTitle: 'LOGIN',
                isSubTitle: false,
                subTitle: '',
              ),
              Spacer(),
              TextFieldAndLabel(
                label: 'EMAIL',
                infoText: 'johndoe@email.com',
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
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ForgotPasswordPage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Forgot Password',
                      style: bodyText.copyWith(
                        color: grayColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              ButtonBottom('LOGIN'),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account? ',
                    style: bodyText.copyWith(
                      color: grayColor,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return RegisterPage();
                      }));
                    },
                    child: Text(
                      'Register',
                      style: bodyText.copyWith(
                        color: secondaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
