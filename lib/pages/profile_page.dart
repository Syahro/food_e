import 'package:flutter/material.dart';
import 'package:food_e/theme.dart';
import 'package:food_e/widget/bottom_floating.dart';
import 'package:food_e/widget/user_menu.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      floatingActionButton: BottomFloating(
        isHome: false,
        isSearch: false,
        isBasket: false,
        isLove: false,
        isUser: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/profile.png',
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'John Doe',
                      style: bodyText.copyWith(
                        color: darkColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                UserMenu(
                  imageUrl: 'assets/icons/pencil.png',
                  menuTitle: 'Account and Profile',
                ),
                UserMenu(
                  imageUrl: 'assets/icons/wallet.png',
                  menuTitle: 'Manage Payment Methods',
                ),
                UserMenu(
                  imageUrl: 'assets/icons/location.png',
                  menuTitle: 'Manage Addresses',
                ),
                UserMenu(
                  imageUrl: 'assets/icons/history.png',
                  menuTitle: 'Order History',
                ),
                UserMenu(
                  imageUrl: 'assets/icons/bug.png',
                  menuTitle: 'Contact Support',
                ),
                UserMenu(
                  imageUrl: 'assets/icons/gift.png',
                  menuTitle: 'Refer to a Friend',
                ),
                UserMenu(
                  imageUrl: 'assets/icons/star.png',
                  menuTitle: 'Write a Review',
                ),
                UserMenu(
                  imageUrl: 'assets/icons/paper.png',
                  menuTitle: 'Terms and Conditions',
                ),
                UserMenu(
                  imageUrl: 'assets/icons/paper2.png',
                  menuTitle: 'Privacy Policy',
                ),
                UserMenu(
                  imageUrl: 'assets/icons/logout.png',
                  menuTitle: 'Logout',
                )
              ],
            ),
            SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
