import 'package:flutter/material.dart';

import '../constant/colors.dart';

ThemeData appLightTheme(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: AppColors.appColor,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme().copyWith(
      color: Colors.white,
    ),
    chipTheme: const ChipThemeData(
      backgroundColor: Color.fromARGB(255, 241, 248, 253),
    ),
  );
}
