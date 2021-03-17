import 'package:flutter/material.dart';

class AppCircularImagePlaceHolder extends StatelessWidget {
  final double radius;

  AppCircularImagePlaceHolder({@required this.radius});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: AssetImage('assets/images/profile_photo.png'),
    );
  }
}
