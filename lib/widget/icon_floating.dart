import 'package:flutter/material.dart';
import 'package:food_e/theme.dart';

class IconFloating extends StatelessWidget {
  final String imageUrl;
  final bool isActive;

  IconFloating({
    this.imageUrl,
    this.isActive,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imageUrl,
          width: 22,
          height: 22,
          color: isActive ? primaryColor : darkColor,
        ),
        SizedBox(
          height: 4,
        ),
        Container(
          height: 1.5,
          width: 7,
          color: isActive ? primaryColor : Colors.transparent,
        ),
      ],
    );
  }
}
