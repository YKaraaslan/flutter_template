import 'package:flutter/material.dart';
import 'package:flutter_app_mvvm/ui/view/authentication/onboard/pages/page_1.dart';
import 'package:flutter_app_mvvm/ui/view/authentication/onboard/pages/page_2.dart';
import 'package:flutter_app_mvvm/ui/view/authentication/onboard/pages/page_3.dart';
import 'package:get/get.dart';

class OnBoardViewModel extends GetxController {
  var pageLists = <Widget>[
    Page1(),
    Page2(),
    Page3(),
  ];

  final currentPageNotifier = ValueNotifier<int>(0);
  var currentPage = 0.obs;
  final pageController = PageController(initialPage: 0);

  void setPageNotifiers(int value) {
    currentPageNotifier.value = value;
    currentPage.value = value;
  }

  void login(){
    Get.offAndToNamed('/login');
  }

  bool get continueButtonVisible => currentPage.value == 2;
}