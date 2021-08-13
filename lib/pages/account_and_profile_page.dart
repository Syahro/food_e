import 'package:flutter/material.dart';
import 'package:food_e/pages/change_password_page.dart';
import 'package:food_e/theme.dart';
import 'package:food_e/widget/header.dart';
import 'package:food_e/widget/text_field_and_label.dart';
import 'package:food_e/widget/user_menu.dart';

class AccountAndProfilePage extends StatelessWidget {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Header(
                headerTitle: 'ACCOUNT AND PROFILE',
                isSubTitle: false,
                subTitle: '',
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/trash.png',
                    width: 22,
                    height: 22,
                    color: errorColor,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Delete Account',
                    style: bodyText.copyWith(
                      color: errorColor,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 59,
                    width: ((MediaQuery.of(context).size.width -
                                (2 * defaultMargin)) /
                            2) -
                        10.5,
                    child: TextFieldAndLabel(
                      label: 'FIRST NAME',
                      infoText: 'John',
                      isPassword: false,
                      isDrop: false,
                    ),
                  ),
                  Container(
                    height: 59,
                    width: ((MediaQuery.of(context).size.width -
                                (2 * defaultMargin)) /
                            2) -
                        10.5,
                    child: TextFieldAndLabel(
                      label: 'LAST NAME',
                      infoText: 'Doe',
                      isPassword: false,
                      isDrop: false,
                    ),
                  )
                ],
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
                height: 50,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ChangePasswordPage();
                      },
                    ),
                  );
                },
                child: UserMenu(
                  imageUrl: 'assets/icons/password.png',
                  menuTitle: 'Change Password',
                ),
              ),
              SizedBox(
                height: 20,
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
                    'UPDATE',
                    style: headingThreeText.copyWith(
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
