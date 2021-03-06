import 'package:flutter/material.dart';
import 'package:food_e/theme.dart';

class TextFieldAndLabel extends StatelessWidget {
  final String label;
  final String infoText;
  final bool isPassword;
  final bool isDrop;

  TextFieldAndLabel({
    this.label,
    this.infoText,
    this.isPassword,
    this.isDrop,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            label,
            style: labelText.copyWith(
              color: primaryColor,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 40,
          width: MediaQuery.of(context).size.width - (2 * defaultMargin),
          decoration: BoxDecoration(
            color: lightColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      infoText,
                      style: inputText.copyWith(
                        color: grayColor,
                      ),
                    ),
                    isPassword
                        ? Image.asset(
                            'assets/icons/eye_open.png',
                            width: 19,
                            height: 16.5,
                            color: primaryColor,
                          )
                        : SizedBox(
                            width: 0,
                          ),
                    isDrop
                        ? Image.asset(
                            'assets/icons/dropdown.png',
                            width: 22,
                            height: 22,
                            color: primaryColor,
                          )
                        : SizedBox(
                            width: 0,
                          ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
