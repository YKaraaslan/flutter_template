import 'package:flutter/material.dart';
import 'package:flutter_app_mvvm/ui/viewmodel/authentication/onboard/pages/page_2_viewmodel.dart';
import 'package:get/get.dart';

class Page2 extends StatelessWidget {
  final viewModel = Get.put(Page2ViewModel());

  @override
  Widget build(BuildContext context) {
    return viewModel.onBoardBase();
  }
}
