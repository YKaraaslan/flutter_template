import 'package:flutter/material.dart';
import 'package:flutter_app_mvvm/ui/viewmodel/authentication/onboard/pages/page_3_viewmodel.dart';
import 'package:get/get.dart';

class Page3 extends StatelessWidget {
  const Page3();

  @override
  Widget build(BuildContext context) {
    return Get.put(Page3ViewModel()).onBoardBase();
  }
}
