import 'package:flutter/material.dart';

import '../theme.dart';

class OrderHistoryInformation extends StatelessWidget {
  final String dateInfo;
  final int totalInfo;
  final int itemsInfo;
  final String textButton;
  final bool isFilledButton;

  OrderHistoryInformation({
    this.dateInfo,
    this.totalInfo,
    this.itemsInfo,
    this.textButton,
    this.isFilledButton,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              dateInfo,
              style: labelText.copyWith(
                color: secondaryColor,
              ),
            ),
            Text(
              '\$ $totalInfo.00',
              style: labelText.copyWith(
                color: secondaryColor,
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          '$itemsInfo items',
          style: bodyText.copyWith(
            color: grayColor,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: isFilledButton ? Colors.transparent : primaryColor,
                width: 2,
              )),
          child: RaisedButton(
            onPressed: () {},
            color: isFilledButton ? primaryColor : whiteColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              textButton,
              style: headingThreeText.copyWith(
                color: isFilledButton ? whiteColor : primaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
