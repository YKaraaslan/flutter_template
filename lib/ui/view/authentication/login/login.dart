import 'package:flutter/material.dart';
import 'package:flutter_app_mvvm/core/base/state/base_state.dart';
import 'package:flutter_app_mvvm/core/base/view/base_view.dart';
import 'package:flutter_app_mvvm/ui/viewmodel/authentication/login/login_viewmodel.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:get/get.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends BaseState<Login> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
        viewModel: Get.put(LoginViewModel()),
        onPageBuilder: (context, dynamic viewModel) {
          return Container();
        });
  }
}
