import 'package:flutter/material.dart';
import 'package:untitled1/CartPage.dart';
import 'package:untitled1/HomePage.dart';
import 'package:untitled1/ItemPage.dart';
import 'package:untitled1/Widget/MenuBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        // primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => HomePage(),
        "cartPage": (context) => CartPage(),
        "itemPage": (context) => ItemPage(),
        "menu": (context) => MenuBar(),
      },
    );
  }
}
