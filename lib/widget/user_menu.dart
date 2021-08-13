import 'package:flutter/material.dart';

import '../theme.dart';

class UserMenu extends StatelessWidget {
  final String imageUrl;
  final String menuTitle;

  UserMenu({
    this.imageUrl,
    this.menuTitle,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 22,
            height: 22,
            color: primaryColor,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            menuTitle,
            style: bodyText.copyWith(
              color: darkColor,
            ),
          ),
          Spacer(),
          Image.asset(
            'assets/icons/right.png',
            width: 22,
            height: 22,
          ),
        ],
      ),
    );
  }
}
