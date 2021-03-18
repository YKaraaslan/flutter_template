import 'package:flutter/material.dart';
import 'package:flutter_app_mvvm/core/constant/colors.dart';
import 'package:flutter_app_mvvm/ui/viewmodel/home/home_main_viewmodel.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

import '../../../core/base/view/base_view.dart';

class HomeMain extends StatefulWidget {
  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      backgroundColor: !Get.isDarkMode ? AppColors.backgroundColor : null,
      viewModel: Get.put(HomeMainViewModel()),
      onPageBuilder: (context, viewModel) => body(context),
    );
  }

  Widget body(context) {
    return Container();
  }
}
