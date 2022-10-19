// import 'dart:ui';

import 'package:flutter/material.dart';

class Dark {
  static ThemeData themeData(BuildContext context) {
    return ThemeData(
      // UI
      // brightness: Brightness.dark,
      primaryColor: Color(0xffF4F4F4),
      // accentColor: Color(0xff000000),
      backgroundColor: Color(0xff161618),
      scaffoldBackgroundColor: Color(0xff000000),

      //text style
      textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(
            fontSize: 16.0,
            color: Color(0xff000000),
          ), //
          bodyText1: TextStyle(fontSize: 14, color: Color(0xff000000))),
    );
  }
}
