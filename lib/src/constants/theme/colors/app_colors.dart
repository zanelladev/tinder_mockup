import 'package:flutter/material.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.bgColor1,
    required this.bgColor2,
  });

  final Color? bgColor1;
  final Color? bgColor2;

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
      bgColor1: Color.lerp(bgColor1, other.bgColor1, t),
      bgColor2: Color.lerp(bgColor1, other.bgColor2, t),
    );
  }

  static const light = AppColors(
    bgColor1: Color.fromARGB(255, 239, 74, 118),
    bgColor2: Color.fromARGB(255, 253, 85, 100),
  );
}
