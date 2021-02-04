import 'dart:ui';

import 'package:get/get.dart';
import 'package:flutter_app_mvvm/core/init/language/languages/english.dart';
import 'package:flutter_app_mvvm/core/init/language/languages/turkish.dart';

class LanguageManager extends Translations{

  static final locale = Locale('tr', 'TR');

  // fallbackLocale saves the day when the locale gets in trouble
  static final fallbackLocale = Locale('en', 'US');

  // Supported languages
  // Needs to be same order with locales
  static final langs = [
    'english',
    'turkish',
  ];

  // Supported locales
  // Needs to be same order with langs
  static final locales = [
    Locale('en', 'US'),
    Locale('tr', 'TR'),
  ];

  // Keys and their translations
  // Translations are separated maps in `lang` file
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': enUS,
    'tr_TR': trTR,
  };

  // Gets locale from language, and updates the locale
  static void changeLocale(String lang) {
    final locale = _getLocaleFromLanguage(lang);
    Get.updateLocale(locale);
  }

  // Finds language in `langs` list and returns it as Locale
  static Locale _getLocaleFromLanguage(String lang) {
    for (int i = 0; i < langs.length; i++) {
      if (lang == langs[i]) return locales[i];
    }
    return Get.locale;
  }
}