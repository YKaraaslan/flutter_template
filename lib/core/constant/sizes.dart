import 'package:flutter/material.dart';

class Sizes {
  Sizes._privateConstructor();
  static final Sizes _instance = Sizes._privateConstructor();
  factory Sizes() {
    return _instance;
  }

  static double height_100percent(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double width_100percent(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}
