import 'package:flutter/material.dart';
import 'package:food_e/pages/email_sent_page.dart';
// import 'package:food_e/pages/register_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EmailSentPage(),
    );
  }
}
