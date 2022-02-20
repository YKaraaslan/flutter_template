class Assets {
  static final String world = _path('logo', 'png');
}

String _path(String name, String type) {
  return 'assets/images/' + name + '.' + type;
}