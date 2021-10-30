import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testing_task/ui/theme/app_colors.dart';

class NewsScreenDecoration {
  static final roundCornerContainerDecoration = BoxDecoration(
      color: Colors.white,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(40),
        bottomRight: Radius.circular(40),
        topRight: Radius.circular(5),
        bottomLeft: Radius.circular(5),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 8,
          offset: const Offset(0, 2),
        )
      ]);

  static final postHeaderTextStyle = GoogleFonts.roboto(
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.postHeaderTextColor,
    ),
  );

  static final postBodyTextStyle = GoogleFonts.roboto(
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColors.mainTextColor,
    ),
  );

  static const avatarContainerDecoration = BoxDecoration(
      gradient: AppColors.mainAppGradient, shape: BoxShape.circle);

  static const loaderDecoration = BoxDecoration(
    gradient: AppColors.mainAppGradient,
  );
}
