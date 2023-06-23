import 'package:flutter/material.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  final Color bgColor1;
  final Color bgColor2;

  const AppColors({
    required this.bgColor1,
    required this.bgColor2,
  });

  @override
  ThemeExtension<AppColors> copyWith({Color? bgColor1, Color? bgColor2}) {
    return AppColors(
      bgColor1: bgColor1 ?? this.bgColor1,
      bgColor2: bgColor2 ?? this.bgColor2,
    );
  }

  @override
  ThemeExtension<AppColors> lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      bgColor1: bgColor1,
      bgColor2: bgColor2,
    );
  }

  factory AppColors.light() {
    return const AppColors(
      bgColor1: Color.fromARGB(255, 232, 75, 117),
      bgColor2: Color.fromARGB(255, 237, 115, 99),
    );
  }
}
