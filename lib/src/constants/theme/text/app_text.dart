import 'package:flutter/material.dart';

class AppText extends ThemeExtension<AppText> {
  const AppText({
    required this.buttonText,
  });

  final TextStyle buttonText;

  @override
  ThemeExtension<AppText> copyWith({TextStyle? buttonText}) {
    return AppText(buttonText: buttonText ?? this.buttonText);
  }

  @override
  ThemeExtension<AppText> lerp(ThemeExtension<AppText>? other, double t) {
    if (other is! AppText) {
      return this;
    }
    return AppText(
      buttonText: buttonText,
    );
  }

  factory AppText.mobile() {
    return const AppText(
      buttonText: TextStyle(
        fontFamily: 'NunitoAsset',
        fontSize: 13,
        letterSpacing: 2,
      ),
    );
  }
}
