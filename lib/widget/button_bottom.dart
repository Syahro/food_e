import 'package:flutter/material.dart';
import '../theme.dart';

class ButtonBottom extends StatelessWidget {
  final String buttonName;

  ButtonBottom(
    this.buttonName,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width - (2 * defaultMargin),
      child: RaisedButton(
        onPressed: () {},
        color: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          buttonName,
          style: headingThreeText.copyWith(
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}
