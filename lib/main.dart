import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_ui/widget/bottomvabar.dart';

import 'package:sample_ui/widget/customappbar.dart';
import 'package:sample_ui/widget/cutomtabbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BottomNavBarExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'assets/love_pg.jpg',
            fit: BoxFit.cover,
          ),
          Opacity(
            opacity: 0.8,
            child: Image.asset(
              'assets/blue_pg.jpg',
              fit: BoxFit.cover,
            ),
          ),
          CustomAppbar(),
          CustomTabBAr(),
        ],
      ),
    );
  }
}
