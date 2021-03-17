import 'package:flutter/material.dart';
import 'package:flutter_app_mvvm/ui/model/authentication/onboard/onboard_model.dart';
import 'package:flutter_app_mvvm/ui/view/authentication/onboard/base/base.dart';
import 'package:get/get.dart';

class Page1ViewModel extends GetxController {
  var model = OnBoardModel(
      assetName: 'assets/images/profile_photo.png',
      title: 'title', //add .tr at the end to translate into a supported language
      subtitle: 'subtitle'
  );

  Widget onBoardBase() {
    return OnBoardBase(model: model);
  }
}
