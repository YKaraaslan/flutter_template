// ignore: import_of_legacy_library_into_null_safe
import 'package:get/get.dart';

class LoginViewModel extends GetxController {
  final counter1 = 0.obs;

  void increment(int value){
    counter1.value += value;
  }

  int get counter => counter1.value;
}