import 'package:flutter/material.dart';

class Sizes {
  static double height_100percent (BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double width_90percent (BuildContext context) {
    return MediaQuery.of(context).size.width * 0.9;
  }
}