import 'package:flutter/material.dart';

const pointerValueStyle = TextStyle(
  fontSize: 18.0,
);

TextStyle pointerTextStyle(BuildContext context) {
  return TextStyle(
    fontSize: 13.0,
    color: Theme.of(context).splashColor.withOpacity(1),
  );
}