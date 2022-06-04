import 'package:flutter/material.dart';

class Styles {
  Styles._privateConstructor();
  static final Styles _instance = Styles._privateConstructor();
  factory Styles() {
    return _instance;
  }

  static TextStyle titleStyle(BuildContext context) {
    return TextStyle(
      fontSize: 23,
      color: Theme.of(context).primaryColor,
    );
  }
}
