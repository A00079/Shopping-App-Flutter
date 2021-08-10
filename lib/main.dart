import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopingapp/utils/constants.dart';
import 'package:shopingapp/views/HomePage/home_page.dart';
import 'dart:ui';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.white));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ShopX',
      theme: ThemeData(
          primaryColor: COLOR_WHITE,
          accentColor: COLOR_DARK_BLUE,
          textTheme: screenWidth < 500 ? TEXT_THEME_SMALL : TEXT_THEME_DEFAULT,
          fontFamily: "Montserrat"),
      home: HomePage(),
    );
  }
}
