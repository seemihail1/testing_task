import 'package:flutter/material.dart';

abstract class AppColors {
  static const firstGradientColor = Color(0xFFE74249);
  static const secondGradientColor = Color(0xFFBB4E75);
  static const whiteAccentColor = Color(0xFFCED0D5);
  static const enabledTextFieldBorderColor = Color(0xFFDADDE3);
  static const redAccentColor = Color(0xFFD1414F);
  static const mainTextColor = Color(0xFF4D545C);
  static const postHeaderTextColor = Color(0xFF252627);
  static const mainAppGradient = LinearGradient(
    colors: [
      AppColors.firstGradientColor,
      AppColors.secondGradientColor,
    ],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  );
}
