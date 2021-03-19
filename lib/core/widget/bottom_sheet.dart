import 'package:flutter/material.dart';

class AppBottomSheet extends StatelessWidget {
  const AppBottomSheet({
    @required this.size,
    @required this.child,
  });

  final double size;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
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
    );
  }
}
