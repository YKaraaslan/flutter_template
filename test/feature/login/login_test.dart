import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp((){
    print('Login Test');
  });

  group('User Login Full Test', () {
    test('User Login Test 1', (){
      final isUserLoggedIn = true;
      expect(isUserLoggedIn, isTrue);
    });

    test('User Login Test 2', (){
      final isUserLoggedIn = true;
      expect(isUserLoggedIn, isTrue);
    });
  });
}

