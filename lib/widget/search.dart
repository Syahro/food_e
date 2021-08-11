import 'package:flutter/material.dart';

import '../theme.dart';

class Search extends StatelessWidget {
  final String placeHolderText;
  final bool isClicked;
  final bool isType;

  Search({
    this.placeHolderText,
    this.isClicked,
    this.isType,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'SEARCH',
            style: labelText.copyWith(
              color: primaryColor,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
            color: lightColor,
            borderRadius: BorderRadius.circular(20),
            border: isType
                ? Border.all(
                    color: primaryColor,
                    width: 2,
                  )
                : Border.all(color: lightColor),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              left: defaultMargin,
              right: 9,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  placeHolderText,
                  style: inputText.copyWith(
                    color: isType ? darkColor : grayColor,
                  ),
                ),
                isClicked
                    ? isType
                        ? Image.asset(
                            'assets/icons/del.png',
                            width: 20,
                            height: 16.5,
                            color: primaryColor,
                          )
                        : Image.asset(
                            'assets/icons/del.png',
                            width: 20,
                            height: 16.5,
                            color: primaryColor,
                          )
                    : SizedBox(
                        width: 0,
                      ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
