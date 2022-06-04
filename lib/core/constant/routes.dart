import 'package:flutter/material.dart';

class Routes {
  Routes._privateConstructor();
  static final Routes _instance = Routes._privateConstructor();
  factory Routes() {
    return _instance;
  }

  static const String basePhotoViewer = '/base_photo_viewer';

  static Map<String, Widget Function(BuildContext)> getRoutes(BuildContext context) {
    return {
      // basePhotoViewer: (context) => const BasePhotoViewer(),
    };
  }
}
