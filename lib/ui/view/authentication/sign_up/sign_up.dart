import 'package:flutter/material.dart';
import 'package:flutter_app_mvvm/ui/viewmodel/authentication/sign_up/sign_up.dart';
import 'package:get/get.dart';

import '../../../../core/base/view/base_view.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
