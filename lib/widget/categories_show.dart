import 'package:flutter/material.dart';

import '../theme.dart';

class CategoriesShow extends StatelessWidget {
  final String title;
  final double widthSize;

  CategoriesShow(
    this.title,
    this.widthSize,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: widthSize,
      decoration: BoxDecoration(
        color: lightColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          title,
          style: bodyText.copyWith(
            color: darkColor,
          ),
        ),
      ),
    );
  }
}
