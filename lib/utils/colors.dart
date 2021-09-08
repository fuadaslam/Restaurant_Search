import 'dart:ui';
import 'package:flutter/material.dart';

class ColorVariables {
  // Colors
  static const Color primaryColor = Colors.white;
  static const Color primaryBgColor = const Color(0xFF181818);
  static const Color primaryBgLightColor = const Color(0xFF202021);
  static const Color highlightColor = const Color(0xFF4E4E4E);
  static const Color bgColor = const Color(0xFF282828);
}

var lightTheme = ThemeData.light();
var mainTheme = lightTheme.copyWith(
colorScheme: lightTheme.colorScheme.copyWith(
primary: ColorVariables.primaryColor
),

scaffoldBackgroundColor: ColorVariables.primaryBgColor,
bottomNavigationBarTheme: BottomNavigationBarThemeData(
backgroundColor: ColorVariables.primaryBgColor,
selectedItemColor: ColorVariables.primaryColor,
),
);