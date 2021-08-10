import 'package:flutter/material.dart';
import 'package:food_e/theme.dart';

class MenuCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;

  MenuCard({
    this.imageUrl,
    this.title,
    this.price,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: ((MediaQuery.of(context).size.width - (2 * defaultMargin)) / 2) -
          10.5,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: darkColor.withOpacity(0.1),
            blurRadius: 15,
            spreadRadius: 4,
            offset: Offset(1, 2),
          )
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imageUrl,
              width:
                  ((MediaQuery.of(context).size.width - (2 * defaultMargin)) /
                          2) -
                      10.5,
              height: 157,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: bodyText.copyWith(
                    color: darkColor,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$ $price',
                      style: headingThreeText.copyWith(
                        color: primaryColor,
                      ),
                    ),
                    Container(
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/icons/basket.png',
                          width: 18,
                          height: 18,
                          color: whiteColor,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
