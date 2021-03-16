import 'package:flutter/material.dart';
import 'package:flutter_app_mvvm/core/base/state/base_state.dart';
import 'package:get/get.dart';
import 'package:flutter_app_mvvm/core/init/language/language_manager.dart';

import 'core/constant/routes.dart';
import 'core/init/theme/dark_theme.dart';
import 'core/init/theme/light_theme.dart';
import 'ui/view/authentication/login/login.dart';
import 'ui/view/authentication/onboard/onboard.dart';
import 'ui/view/authentication/sign_up/sign_up.dart';
import 'ui/view/home/home_main.dart';

void main() {
  runApp(
    GetMaterialApp(
      locale: LanguageManager.locale,
      fallbackLocale: LanguageManager.fallbackLocale,
      translations: LanguageManager(),
      initialRoute: Routes.main,
      home: Main(),
      routes: {
        Routes.main:(context) => Main(),
        Routes.on_board:(context) => OnBoard(),
        Routes.login:(context) => Login(),
        Routes.sign_up:(context) => SignUp(),
        Routes.home_main:(context) => HomeMain(),
      },
      themeMode: ThemeMode.light,
      darkTheme: appDarkTheme,
      theme: appLightTheme,
    ),
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
