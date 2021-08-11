import 'package:flutter/material.dart';

import '../theme.dart';

class RecentSearch extends StatelessWidget {
  final String title;

  RecentSearch(this.title);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/icons/history.png',
          width: 18.33,
          height: 18.33,
          color: grayColor,
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          title,
          style: bodyText.copyWith(
            color: grayColor,
          ),
        ),
        Spacer(),
        Image.asset(
          'assets/icons/close.png',
          width: 18.33,
          height: 18.33,
          color: grayColor,
        ),
      ],
    );
  }
}
