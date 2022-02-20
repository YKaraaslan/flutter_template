import 'package:flutter/material.dart';

import '../../view/home_view.dart';

class Routes {

  static const String homeView = '/homeView'; // use '' if there are multiple views.

  static Map<String, Widget Function(BuildContext)> getRoutes(BuildContext context) {

  return {
    homeView: (context) => const HomeView(),
    };
  }
}