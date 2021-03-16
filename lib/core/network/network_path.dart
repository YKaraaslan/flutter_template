enum NetworkPath { TODOS }

extension StringPathValue on NetworkPath {
  String get rawValue {
    switch (this) {
      case NetworkPath.TODOS:
        return '/todos';
        break;

      default:
        throw 'Network path is not found';
    }
  }
}
