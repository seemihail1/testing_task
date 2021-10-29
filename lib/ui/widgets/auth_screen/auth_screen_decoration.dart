import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testing_task/ui/theme/app_colors.dart';

class AuthScreenDecoration {
  static const roundCornerContainerDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(40),
      bottomRight: Radius.circular(40),
    ),
  );



  static final unavaliableButtonGradient = LinearGradient(colors: [
    AppColors.firstGradientColor.withOpacity(0.4),
    AppColors.secondGradientColor.withOpacity(0.4),
    Colors.grey.withOpacity(0.7)
  ]);

  static nicknameTextFieldDecoration(String? errorText) => InputDecoration(
        label: Text(
          'Nickname',
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: AppColors.whiteAccentColor,
            ),
          ),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.redAccentColor,
          ),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.enabledTextFieldBorderColor,
          ),
        ),
        errorText: errorText,
      );

  static passwordTextFieldDecoration(
          String? errorText, void Function() onPressed) =>
      InputDecoration(
        suffixIcon: IconButton(
          onPressed: onPressed,
          icon: const Icon(
            Icons.remove_red_eye_outlined,
            color: AppColors.redAccentColor,
          ),
        ),
        label: Text(
          'Password',
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: AppColors.whiteAccentColor,
            ),
          ),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.redAccentColor,
          ),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.enabledTextFieldBorderColor,
          ),
        ),
        errorText: errorText,
      );

  static final authButtonStyle = ElevatedButton.styleFrom(
    onSurface: Colors.white,
    primary: Colors.white,
    padding: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
  );

  static final hyperlinkTextDecoration = GoogleFonts.roboto(
    textStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Color(0xFF0290E0),
      decoration: TextDecoration.underline,
    ),
  );
  static final buttonTextStyle = GoogleFonts.roboto(
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
  );
  static final headerTextStyle = GoogleFonts.roboto(
    textStyle: const TextStyle(
        fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
  );
}
