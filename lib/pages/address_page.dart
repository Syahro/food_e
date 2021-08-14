import 'package:flutter/material.dart';
import 'package:food_e/theme.dart';
import 'package:food_e/widget/button_bottom.dart';
import 'package:food_e/widget/header.dart';
import 'package:food_e/widget/text_field_and_label.dart';

class AddressPage extends StatelessWidget {
  final bool isSkip;
  final bool isBack;

  AddressPage({
    this.isSkip,
    this.isBack,
  });
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
                children: [
                  Header(
                    headerTitle: 'ADDRESS SETUP',
                    isSubTitle: false,
                    subTitle: '',
                    isBack: isBack,
                  ),
                  SizedBox(
                    height: 130,
                  ),
                  TextFieldAndLabel(
                    label: 'ADDRESS LINE 1',
                    infoText: 'Address',
                    isPassword: false,
                    isDrop: false,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFieldAndLabel(
                    label: 'ADDRESS LINE 2',
                    infoText: 'Address',
                    isPassword: false,
                    isDrop: false,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: ((MediaQuery.of(context).size.width -
                                    (2 * defaultMargin)) /
                                2) -
                            10.5,
                        child: TextFieldAndLabel(
                          label: 'ZIP CODE',
                          infoText: '0000-0000',
                          isPassword: false,
                          isDrop: false,
                        ),
                      ),
                      Container(
                        width: ((MediaQuery.of(context).size.width -
                                    (2 * defaultMargin)) /
                                2) -
                            10.5,
                        child: TextFieldAndLabel(
                          label: 'CITY',
                          infoText: 'City',
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
                    label: 'COUNTRY',
                    infoText: 'Country',
                    isPassword: false,
                    isDrop: true,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ButtonBottom('ADD ADDRESS'),
                  isSkip
                      ? Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Text(
                            'Skip for now',
                            style: bodyText.copyWith(
                              color: grayColor,
                            ),
                          ),
                        )
                      : SizedBox(
                          height: 0,
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
