import 'package:flutter_app_mvvm/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appDarkTheme(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: AppColors.primarySwatch,
    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      titleTextStyle: TextStyle(color: Colors.white),
      iconTheme: IconThemeData(color: Colors.white),
      textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
          .apply(bodyColor: Colors.black),
    ),
    colorScheme: ColorScheme.light(
      primary: AppColors.primarySwatch,
      secondary: AppColors.app_color,
      error: Colors.red,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.black87,
      selectedItemColor: AppColors.primarySwatch,
      selectedIconTheme: IconThemeData(color: AppColors.primarySwatch),
      selectedLabelStyle: TextStyle(color: AppColors.primarySwatch),
      showSelectedLabels: true,
      showUnselectedLabels: true,
      unselectedIconTheme: IconThemeData(color: Colors.white10),
      unselectedItemColor: Colors.white10,
      unselectedLabelStyle: TextStyle(color: Colors.white10),
    ),
  );
}
