import 'package:flutter/material.dart';

class Sizes {
  static double height_30percent (BuildContext context) {
    return MediaQuery.of(context).size.height * 0.3;
  }

  static double height_100percent (BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}