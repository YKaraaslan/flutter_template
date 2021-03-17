import 'package:flutter_app_mvvm/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appLightTheme(BuildContext context){
  return ThemeData.light().copyWith(
    primaryColor: AppColors.app_color,
    brightness: Brightness.light,
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      titleTextStyle: TextStyle(color: Colors.black),
      iconTheme: IconThemeData(color: Colors.black),
    ),
    iconTheme: IconThemeData(color: Colors.black45),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme).apply(bodyColor: Colors.black),
    colorScheme: ColorScheme.light(
      primary: AppColors.app_color,
      secondary: AppColors.primarySwatch,
      error: Colors.red,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: AppColors.primarySwatch,
      selectedIconTheme: IconThemeData(color: AppColors.primarySwatch),
      selectedLabelStyle: TextStyle(color: AppColors.primarySwatch),
      showSelectedLabels: true,
      showUnselectedLabels: true,
      unselectedIconTheme: IconThemeData(color: Colors.black38),
      unselectedItemColor: Colors.black38,
      unselectedLabelStyle: TextStyle(color: Colors.black38),
    ),
  );
}
