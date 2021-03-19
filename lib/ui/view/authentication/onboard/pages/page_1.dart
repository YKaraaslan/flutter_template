import 'package:flutter/material.dart';
import 'package:flutter_app_mvvm/ui/viewmodel/authentication/onboard/pages/page_1_viewmodel.dart';
import 'package:get/get.dart';

class Page1 extends StatelessWidget {
  const Page1();

  @override
  Widget build(BuildContext context) {
    return Get.put(Page1ViewModel()).onBoardBase();
  }
}
