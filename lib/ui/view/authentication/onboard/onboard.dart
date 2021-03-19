import 'package:flutter/material.dart';
import 'package:flutter_app_mvvm/core/base/view/base_view.dart';
import 'package:flutter_app_mvvm/core/constant/colors.dart';
import 'package:flutter_app_mvvm/core/widget/circle_page_indicator.dart';
import 'package:flutter_app_mvvm/ui/viewmodel/authentication/onboard/onboard_viewmodel.dart';
import 'package:get/get.dart';

class OnBoard extends StatelessWidget {
  const OnBoard();

  @override
  Widget build(BuildContext context) {
    return BaseView(
      onModelReady: null,
      viewModel: Get.put(OnBoardViewModel()),
      backgroundColor: Colors.white,
      onPageBuilder: (context, viewModel) => Body(viewModel),
    );
  }
}

class Body extends StatelessWidget {
  const Body(this.viewModel);

  final viewModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: viewModel.pageController,
          onPageChanged: (int index) {
            viewModel.setPageNotifiers(index);
          },
          children: viewModel.pageLists,
        ),
        AppCirclePageIndicator(
            counter: viewModel.pageLists.length,
            currentPageNotifier: viewModel.currentPageNotifier),
        Positioned(
          bottom: 80,
          left: 50,
          right: 50,
          child: Obx(
            () => Visibility(
              visible: viewModel.continueButtonVisible,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // background color
                  primary: AppColors.app_color,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  textStyle: TextStyle(fontSize: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  viewModel.login();
                },
                child: Text('continue'.tr),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
