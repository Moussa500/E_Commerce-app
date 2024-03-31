
import 'package:e_commerce_app/models/shop.dart';
import 'package:e_commerce_app/pages/cart_page.dart';
import 'package:e_commerce_app/pages/intro_page.dart';
import 'package:e_commerce_app/pages/shope_page.dart';
import 'package:e_commerce_app/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context)=>Shop(),
    child: const MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      initialRoute: '/intro_page',
      routes: {
        '/intro_page':(context)=>const IntroPage(),
        '/shop_page':(context)=>const ShopPage(),
        '/cart_page':(context)=>const CartPage(),
      },
    );
  }
}