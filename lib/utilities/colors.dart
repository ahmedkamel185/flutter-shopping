import 'package:flutter/material.dart';

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}

class ColorConstants {
  static Color grayBackgroundColor = hexToColor('#e9ebef');
  static Color lightGreen = hexToColor('#13a69a');
  static Color lightGray = hexToColor('#818181');
  static Color darkGreenColor = hexToColor('#0fa59a');
  static Color calBackgroundColor = hexToColor('#e8f8f7');
}
