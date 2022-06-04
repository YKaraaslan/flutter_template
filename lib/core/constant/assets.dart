class Assets {
  Assets._privateConstructor();
  static final Assets _instance = Assets._privateConstructor();
  factory Assets() {
    return _instance;
  }

  static final String logo = _path('logo', 'png');
}

String _path(String name, String type) {
  return 'assets/images/$name.$type';
}
