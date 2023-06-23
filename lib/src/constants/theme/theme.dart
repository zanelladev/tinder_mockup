import 'package:flutter/material.dart';
import 'colors/app_colors.dart';
import 'text/app_text.dart';

class AppTheme {
  static ThemeData get lightheme {
    return ThemeData(
      extensions: [
        AppColors.light(),
        const AppText(
          buttonText: TextStyle(
            fontFamily: 'NunitoAsset',
            fontSize: 13,
            letterSpacing: 2,
          ),
          nunitoDefault: TextStyle(
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w400,
            fontSize: 13,
          ),
        )
      ],
    );
  }
}
