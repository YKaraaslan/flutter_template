import 'package:flutter/material.dart';
import 'package:flutter_app_mvvm/core/constant/colors.dart';

class AppBottomSheet extends StatelessWidget {
  final double size;
  final Widget child;

  AppBottomSheet({@required this.size, @required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.bottomSheetBackground,
      height: size,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(20),
            topRight: const Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Center(
              child: Icon(
                Icons.drag_handle_sharp,
                color: Colors.blue[200],
                size: 25,
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
