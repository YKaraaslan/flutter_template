import 'package:flutter/material.dart';

import '../base/view/base_view.dart';

class SampleWidget extends StatelessWidget {
  const SampleWidget({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return BaseView(
      onPageBuilder: (context, value) => _Body(
        text: text,
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        text,
        style: const TextStyle(fontSize: 15),
      ),
    );
  }
}
