import 'package:flutter/material.dart';

class AppText extends ThemeExtension<AppText> {
  const AppText({
    required this.buttonText,
    required this.nunitoDefault,
  });

  final TextStyle buttonText;
  final TextStyle nunitoDefault;

  @override
  ThemeExtension<AppText> copyWith(
      {TextStyle? buttonText, TextStyle? nunitoDefault}) {
    return AppText(
      buttonText: buttonText ?? this.buttonText,
      nunitoDefault: nunitoDefault ?? this.nunitoDefault,
    );
  }

  @override
  ThemeExtension<AppText> lerp(ThemeExtension<AppText>? other, double t) {
    if (other is! AppText) {
      return this;
    }
    return AppText(
      buttonText: buttonText,
      nunitoDefault: nunitoDefault,
    );
  }
}
