import 'package:flutter/material.dart';
import 'package:flutter_app_mvvm/ui/viewmodel/authentication/onboard/pages/page_1_viewmodel.dart';
import 'package:get/get.dart';

class Page1 extends StatelessWidget {
  final viewModel = Get.put(Page1ViewModel());

  @override
  Widget build(BuildContext context) {
    return viewModel.onBoardBase();
  }
}
