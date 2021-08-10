import 'package:flutter/material.dart';

import '../theme.dart';

class RestaurantCard extends StatelessWidget {
  final String imageUrl;

  RestaurantCard({
    this.imageUrl,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: darkColor.withOpacity(0.1),
            blurRadius: 5,
            spreadRadius: 2,
            offset: Offset(0, 1),
          )
        ],
      ),
      child: Center(
        child: Image.asset(
          imageUrl,
          width: 64,
          height: 64,
        ),
      ),
    );
  }
}
