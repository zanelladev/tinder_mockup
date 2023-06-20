import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> {
  final Color? bgColor1 = const Color.fromARGB(255, 239, 74, 118);
  final Color? bgColor2 = const Color.fromARGB(255, 253, 85, 100);

  const AppColors({
    required bgColor1,
    required bgColor2,
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
      bgColor1: Color.lerp(bgColor1, other.bgColor1, t),
      bgColor2: Color.lerp(bgColor1, other.bgColor2, t),
    );
  }
}
