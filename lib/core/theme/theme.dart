import 'package:flutter/material.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData buildTheme() {
    return ThemeData(
      scaffoldBackgroundColor: ColorS.background,
      appBarTheme: _appBarTheme(),
      // bottomNavigationBarTheme: ,
      // dialogTheme: ,
      // inputDecorationTheme: ,
      tabBarTheme: _tabBarTheme(),
      textTheme: TextS.textTheme(),
    );
  }

  static AppBarTheme _appBarTheme() {
    return AppBarTheme(
      backgroundColor: Colors.white,
      titleTextStyle: TextS.heading1(),
      elevation: 0,
    );
  }

  static TabBarTheme _tabBarTheme() {
    return TabBarTheme(
      labelStyle: TextS.caption2(),
    );
  }
}
