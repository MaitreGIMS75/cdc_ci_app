import 'package:flutter/material.dart';

import 'src/screens/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CDC CI APP',
      theme: ThemeData(
          primarySwatch: MaterialColor(0xffF28D31, <int, Color>{
            50: Color(0xffF28D31),
            100: Color(0xfff39846),
            200: Color(0xfff5a45a),
            300: Color(0xfff6af6f),
            400: Color(0xfff7bb83),
            500: Color(0xfff9c698),
            600: Color(0xfffad1ad),
            700: Color(0xfffbddc1),
            800: Color(0xfffce8d6),
            900: Color(0xfffef4ea)
          }),
          fontFamily: 'Quicksand',
          textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: TextStyle(
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
          appBarTheme: AppBarTheme(
              textTheme: ThemeData.light().textTheme.copyWith(
                  headline6: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 20,
                      fontWeight: FontWeight.bold)))),
      home: SplashScreen(),
    );
  }
}
