import 'package:flutter/material.dart';

@immutable
class Pallet extends ThemeExtension<Pallet> {
  const Pallet({
    required this.etsRed,
  });

  final Color? etsRed;

  @override
  Pallet copyWith({
    Color? etsRed,
  }) {
    return Pallet(
      etsRed: etsRed ?? this.etsRed,
    );
  }

  // Controls how the properties change on theme changes
  @override
  Pallet lerp(ThemeExtension<Pallet>? other, double t) {
    if (other is! Pallet) {
      return this;
    }
    return Pallet(
      etsRed: Color.lerp(etsRed, other.etsRed, t),
    );
  }

  // Controls how it displays when the instance is being passed
  // to the `print()` method.
  @override
  String toString() => "String";
  // the light theme
  static const light = Pallet(
    etsRed: Color(0xffef3e45),
  );
  // the dark theme
  static const dark = Pallet(
    etsRed: Color(0xffbf311a),
  );
}
