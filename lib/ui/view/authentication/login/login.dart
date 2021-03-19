import 'package:flutter/material.dart';
import 'package:flutter_app_mvvm/core/base/view/base_view.dart';
import 'package:flutter_app_mvvm/ui/viewmodel/authentication/login/login_viewmodel.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login();

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: Get.put(LoginViewModel()),
      onPageBuilder: (context, value) => const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
