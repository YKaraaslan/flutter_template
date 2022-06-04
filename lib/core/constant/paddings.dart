import 'package:flutter/material.dart';

class AppPaddings {
  AppPaddings._privateConstructor();
  static final AppPaddings _instance = AppPaddings._privateConstructor();
  factory AppPaddings() {
    return _instance;
  }

  static EdgeInsets appPadding = const EdgeInsets.all(10);
}
