import 'package:flutter/material.dart';
import 'package:flutter_app_mvvm/core/base/view/base_view.dart';
import 'package:flutter_app_mvvm/ui/viewmodel/authentication/sign_up/sign_up_viewmodel.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp();

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: Get.put(SignUpViewModel()),
      onPageBuilder: (context, viewModel) {
        return Container();
      },
    );
  }
}
