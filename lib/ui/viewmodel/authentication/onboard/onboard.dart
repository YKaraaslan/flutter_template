import 'package:get/get.dart';

class OnBoardViewModel extends GetxController {
  final counter1 = 0.obs;

  void increment(value){
    counter1.value += value;
  }

  get counter => counter1.value;
}