import 'package:flutter/material.dart' hide showDialog;
import 'package:meokq_boss/core/color/color_theme.dart';

class TextS {
  static const double scaled = 0.0;

  static TextStyle title1() {
    return const TextStyle(
      fontFamily: 'Pretendard',
      fontSize: 23,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      color: Colors.black,
    );
  }

  static TextStyle heading1() {
    return const TextStyle(
      fontFamily: 'Pretendard',
      fontSize: 17,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      letterSpacing: -0.4,
      color: Colors.black,
    );
  }

  static TextStyle heading2() {
    return const TextStyle(
      fontFamily: 'Pretendard',
      fontSize: 15,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      // height: 18,
      letterSpacing: -0.4,
      color: Colors.black,
    );
  }

  static TextStyle subtitle1() {
    return const TextStyle(
      fontFamily: 'Pretendard',
      fontSize: 16,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      // height: 24,
      letterSpacing: -0.4,
      color: Colors.black,
    );
  }

  static TextStyle subtitle2() {
    return const TextStyle(
      fontFamily: 'Pretendard',
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      // height: 24,
      letterSpacing: -0.4,
      color: Colors.black,
    );
  }

  static TextStyle caption1() {
    return const TextStyle(
      fontFamily: 'Pretendard',
      fontSize: 13,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      // height: 20,
      letterSpacing: -0.3,
      color: ColorS.gray300,
    );
  }

  static TextStyle caption2() {
    return const TextStyle(
      fontFamily: 'Pretendard',
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: -0.3,
    );
  }

  static TextStyle body() {
    return const TextStyle(
      fontFamily: 'Pretendard',
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      // height: 16,
      letterSpacing: -0.4,
      color: Colors.black,
    );
  }

  static TextStyle badge01() {
    return const TextStyle(
      fontFamily: 'Pretendard',
      fontSize: 10,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      // height: 12,
    );
  }

  static TextStyle button() {
    return const TextStyle(
      fontFamily: 'Pretendard',
      fontSize: 16,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      // height: 18,
    );
  }

  static TextStyle tabRegular() {
    return const TextStyle(
      fontFamily: 'Pretendard',
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    );
  }

  static TextTheme textTheme() {
    return TextTheme(
      headlineLarge: heading1(),
      headlineMedium: heading2(),
      bodyMedium: caption1(),
      bodySmall: caption2(),
      labelLarge: button(),
    );
  }
}
