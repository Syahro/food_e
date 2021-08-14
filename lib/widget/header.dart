import 'package:flutter/material.dart';
import 'package:food_e/theme.dart';

class Header extends StatelessWidget {
  final String headerTitle;
  final bool isSubTitle;
  final String subTitle;
  final bool isBack;

  Header({
    this.headerTitle,
    this.isSubTitle,
    this.subTitle,
    this.isBack,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          isBack ? 'assets/icons/left.png' : 'assets/icons/close.png',
          width: 22,
          height: 22,
        ),
        SizedBox(
          height: 50,
        ),
        Text(
          headerTitle,
          style: headingOneText.copyWith(
            color: darkColor,
          ),
        ),
        isSubTitle
            ? Padding(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      subTitle,
                      style: bodyText.copyWith(
                        color: grayColor,
                      ),
                    ),
                  ],
                ),
              )
            : Container(),
      ],
    );
  }
}
