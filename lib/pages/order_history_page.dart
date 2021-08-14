import 'package:flutter/material.dart';
import 'package:food_e/pages/track_order_page.dart';
import 'package:food_e/theme.dart';
import 'package:food_e/widget/header.dart';
import 'package:food_e/widget/order_history_information.dart';

class OrderHistoryPage extends StatelessWidget {
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
                    headerTitle: 'ORDER HISTORY',
                    isSubTitle: false,
                    subTitle: '',
                    isBack: true,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  OrderHistoryInformation(
                    dateInfo: '08 July 2021',
                    totalInfo: 65,
                    itemsInfo: 5,
                    textButton: 'TRACK ORDER',
                    isTrack: true,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  OrderHistoryInformation(
                    dateInfo: '05 July 2021',
                    totalInfo: 105,
                    itemsInfo: 11,
                    textButton: 'VIEW DETAILS',
                    isTrack: false,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  OrderHistoryInformation(
                    dateInfo: '01 July 2021',
                    totalInfo: 30,
                    itemsInfo: 2,
                    textButton: 'VIEW DETAILS',
                    isTrack: false,
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
