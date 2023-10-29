import 'package:flutter/material.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData buildTheme() {
    return ThemeData(
      primaryColor: ColorS.primary,
      scaffoldBackgroundColor: ColorS.background,
      appBarTheme: _appBarTheme(),
      bottomNavigationBarTheme: _bottomNavigationBarThemeData(),
      // dialogTheme: ,
      // inputDecorationTheme: ,
      tabBarTheme: _tabBarTheme(),
      textTheme: TextS.textTheme(),
    );
  }

  static AppBarTheme _appBarTheme() {
    return AppBarTheme(
      backgroundColor: Colors.white,
      titleTextStyle: TextS.title1(),
      elevation: 0,
      foregroundColor: Colors.black,
    );
  }

  static TabBarTheme _tabBarTheme() {
    return TabBarTheme(
      labelStyle: TextS.caption2(),
    );
  }

  static BottomNavigationBarThemeData _bottomNavigationBarThemeData() {
    return BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: ColorS.gray400,
      showUnselectedLabels: true,
      unselectedItemColor: ColorS.gray200,
      selectedLabelStyle:
          TextS.badge01().copyWith(color: ColorS.gray400, height: 2),
      unselectedLabelStyle:
          TextS.badge01().copyWith(color: ColorS.gray200, height: 2),
    );
  }
}
