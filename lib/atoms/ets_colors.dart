import 'package:flutter/material.dart';

@immutable
class ETSColors extends ThemeExtension<ETSColors> {
  // ETS colors
  static const Color etsBlack = Color(0xff2e2a25);

  const ETSColors({
    required this.red,
    required this.grey,
  });
  final Color? red;
  final Color? grey;
  @override
  ETSColors copyWith({Color? red, Color? grey}) {
    return ETSColors(
      red: red ?? this.red,
      grey: grey ?? this.grey,
    );
  }

  // Controls how the properties change on theme changes
  @override
  ETSColors lerp(ThemeExtension<ETSColors>? other, double t) {
    if (other is! ETSColors) {
      return this;
    }
    return ETSColors(
      red: Color.lerp(red, other.red, t),
      grey: Color.lerp(grey, other.grey, t),
    );
  }

  // Controls how it displays when the instance is being passed
  // to the `print()` method.
  @override
  String toString() => 'ETSColors';
  // the light theme
  static const light = ETSColors(
    red: Color(0xffef3e45),
    grey: Color(0xff807f83),
  );
  // the dark theme
  static const dark = ETSColors(
    red: Color(0xffbf311a),
    grey: Color(0xff636467),
  );
}
