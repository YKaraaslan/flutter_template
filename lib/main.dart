import 'package:flutter/material.dart';
import 'package:flutter_app_mvvm/core/base/state/base_state.dart';
import 'package:get/get.dart';
import 'package:flutter_app_mvvm/core/init/language/language_manager.dart';

import 'ui/view/authentication/onboard/onboard.dart';

void main() {
  runApp(
    GetMaterialApp(
      locale: LanguageManager.locale,
      fallbackLocale: LanguageManager.fallbackLocale,
      translations: LanguageManager(),
      home: Main(),
    )
  );
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends BaseState<Main> {
  @override
  Widget build(BuildContext context) {
    return OnBoard();
  }
}
