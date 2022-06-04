import 'package:flutter/material.dart';

class AppColors {
  AppColors._privateConstructor();
  static final AppColors _instance = AppColors._privateConstructor();
  factory AppColors() {
    return _instance;
  }

  static const appColor = Color(0xff004566);
  static const Color defaultSampleColor = Colors.black;
}
