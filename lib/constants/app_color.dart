import 'package:flutter/material.dart';

class AppColor {
  static const lightBlue = 0xFF0891D7;
  static const mediumBlue = 0xFF0878C4;
  static const darkBlue = 0xFF095FB1;

  static const LinearGradient gradientBlue = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(lightBlue),
      Color(mediumBlue),
      Color(darkBlue),
    ],
  );
}
