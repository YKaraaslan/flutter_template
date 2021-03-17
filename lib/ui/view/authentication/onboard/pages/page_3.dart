import 'package:flutter/material.dart';
import 'package:flutter_app_mvvm/ui/viewmodel/authentication/onboard/pages/page_3_viewmodel.dart';
import 'package:get/get.dart';

class Page3 extends StatelessWidget {
  final viewModel = Get.put(Page3ViewModel());

  @override
  Widget build(BuildContext context) {
    return viewModel.onBoardBase();
  }
}
