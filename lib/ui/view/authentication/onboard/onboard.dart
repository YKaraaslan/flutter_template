import 'package:flutter/material.dart';
import 'package:flutter_app_mvvm/core/base/state/base_state.dart';
import 'package:flutter_app_mvvm/core/base/view/base_view.dart';
import 'package:flutter_app_mvvm/ui/viewmodel/authentication/onboard/onboard_viewmodel.dart';
import 'package:get/get.dart';

class OnBoard extends StatefulWidget {
  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends BaseState<OnBoard> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: Get.put(OnBoardViewModel()),
      onPageBuilder: (context, viewModel) {
        return Container();
      },
    );
  }
}
