import 'package:flutter/material.dart';
import 'Pages/intro_page.dart';
import 'Pages/home_page.dart';
import 'Pages/cart_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const IntroPage(),
      routes: {
        '/intro_page': (context) => const IntroPage(),
        '/homePage': (context) => const HomePage(),
        '/cartPage': (context) => const CartPage(),
      },
    );
  }
}
