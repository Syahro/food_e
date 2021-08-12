import 'package:flutter/material.dart';

import '../theme.dart';

class BasketCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String price;
  final bool isLove;
  final int total;

  BasketCard({
    this.imageUrl,
    this.name,
    this.price,
    this.isLove,
    this.total,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imageUrl,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: bodyText.copyWith(
                  color: darkColor,
                ),
              ),
              Text(
                '\$ $price',
                style: headingTwoTet.copyWith(
                  color: primaryColor,
                ),
              ),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 22,
                width: 22,
                decoration: BoxDecoration(
                  color: errorColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Image.asset(
                    'assets/icons/trash.png',
                    width: 15,
                    height: 15,
                    color: whiteColor,
                  ),
                ),
              ),
              isLove
                  ? Container(
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/icons/basket.png',
                          width: 15,
                          height: 13.17,
                          color: whiteColor,
                        ),
                      ),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '$total',
                          style: bodyText.copyWith(
                            color: darkColor,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Image.asset(
                          'assets/icons/dropdown.png',
                          width: 22,
                          height: 22,
                        ),
                      ],
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
