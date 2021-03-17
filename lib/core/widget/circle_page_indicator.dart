import 'package:flutter_app_mvvm/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

class AppCirclePageIndicator extends StatelessWidget {
  final int counter;
  final ValueNotifier<int> currentPageNotifier;

  AppCirclePageIndicator({@required this.counter, @required this.currentPageNotifier});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 30,
      child: CirclePageIndicator(
        selectedDotColor: AppColors.app_color,
        dotColor: Colors.grey,
        itemCount: counter,
        currentPageNotifier: currentPageNotifier,
      ),
    );
  }
}
