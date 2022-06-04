import 'package:flutter/material.dart';

import '../core/base/view/base_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
      onPageBuilder: (context, value) {
        return Container();
      },
    );
  }
}
