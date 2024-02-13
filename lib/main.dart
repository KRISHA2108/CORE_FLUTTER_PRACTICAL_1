import 'package:flutter/material.dart';
import 'package:prectical_exam_e_commers_app/utils/routes_utils.dart';
import 'package:prectical_exam_e_commers_app/views/screens/cart_page.dart';
import 'package:prectical_exam_e_commers_app/views/screens/detail_page.dart';
import 'package:prectical_exam_e_commers_app/views/screens/home_page.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.homePage: (context) => const HomePage(),
        Routes.detailPage: (context) => const DetailPage(),
        Routes.cartPage: (context) => const CartPage(),
      },
    );
  }
}
