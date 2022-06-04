// ignore_for_file: depend_on_referenced_packages

import 'package:shared_preferences/shared_preferences.dart';

class DarkThemePreference {
  DarkThemePreference._privateConstructor();
  static final DarkThemePreference _instance = DarkThemePreference._privateConstructor();
  factory DarkThemePreference() {
    return _instance;
  }

  static const themeStatus = 'THEMESTATUS';

  Future<void> setDarkTheme(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(themeStatus, value);
  }

  Future<bool> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(themeStatus) ?? false;
  }
}
