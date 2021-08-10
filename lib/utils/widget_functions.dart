import 'package:flutter/material.dart';

Widget addVerticalSpace(double height) {
  return SizedBox(height: height);
}

Widget addHorizontalSpace(double width) {
  return SizedBox(width: width);
}

TextStyle customText(Color color, FontWeight fontweight, double fontsize,
    [double? lineheight]) {
  return TextStyle(
      color: color,
      fontWeight: fontweight,
      fontSize: fontsize,
      height: lineheight);
}
