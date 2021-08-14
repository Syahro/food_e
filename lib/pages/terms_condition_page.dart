import 'package:flutter/material.dart';
import 'package:food_e/theme.dart';
import 'package:food_e/widget/header.dart';

class TermsConditionPage extends StatelessWidget {
  final String titleHeader;

  TermsConditionPage(
    this.titleHeader,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Header(
                    headerTitle: titleHeader,
                    isSubTitle: false,
                    subTitle: '',
                    isBack: true,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    '1 - TITLE',
                    style: headingTwoTet.copyWith(
                      color: darkColor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Nesciunt tenetur maiores voluptatem maxime. Corrupti cum ab numquam eaque facere. Veritatis ut et eveniet autem dolor aut facere.',
                    style: bodyText.copyWith(
                      color: grayColor,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '1.1 - SUBTITLE',
                    style: headingThreeText.copyWith(
                      color: darkColor,
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    'Nesciunt tenetur maiores voluptatem maxime. Corrupti cum ab numquam eaque facere. Veritatis ut et eveniet autem dolor aut facere.',
                    style: bodyText.copyWith(
                      color: grayColor,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '1.2 - SUBTITLE',
                    style: headingThreeText.copyWith(
                      color: darkColor,
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    'Nesciunt tenetur maiores voluptatem maxime. Corrupti cum ab numquam eaque facere. Veritatis ut et eveniet autem dolor aut facere.',
                    style: bodyText.copyWith(
                      color: grayColor,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    '1 - TITLE',
                    style: headingTwoTet.copyWith(
                      color: darkColor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Nesciunt tenetur maiores voluptatem maxime. Corrupti cum ab numquam eaque facere. Veritatis ut et eveniet autem dolor aut facere.',
                    style: bodyText.copyWith(
                      color: grayColor,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '1.1 - SUBTITLE',
                    style: headingThreeText.copyWith(
                      color: darkColor,
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    'Nesciunt tenetur maiores voluptatem maxime. Corrupti cum ab numquam eaque facere. Veritatis ut et eveniet autem dolor aut facere.',
                    style: bodyText.copyWith(
                      color: grayColor,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
