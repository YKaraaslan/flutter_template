import 'package:flutter/material.dart';
import 'package:flutter_app_mvvm/core/constant/sizes.dart';
import 'package:flutter_app_mvvm/core/constant/styles.dart';
import 'package:flutter_app_mvvm/ui/model/authentication/onboard/onboard_model.dart';

class OnBoardBase extends StatelessWidget {
  const OnBoardBase({@required this.model});

  final OnBoardModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Image(
              image: AssetImage(model.assetName),
              height: Sizes.height_30percent(context),
            ),
          ),
        ),
        Text(
          model.title,
          style: kTitleStyle,
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            model.subtitle,
            style: kSubtitleStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
