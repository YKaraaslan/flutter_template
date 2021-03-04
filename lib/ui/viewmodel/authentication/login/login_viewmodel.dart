import 'package:get/get.dart';

class LoginViewModel extends GetxController {
  final counter1 = 0.obs;

  void increment(int value){
    counter1.value += value;
  }

  get counter => counter1.value;
}