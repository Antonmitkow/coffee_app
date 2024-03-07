import 'package:flutter/material.dart';

final theme = ThemeData(
  primarySwatch: const Color.fromRGBO(255, 255, 255, 100).createMaterialColor(),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontWeight: FontWeight.w700,
        fontSize: 32),
    bodyMedium: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontWeight: FontWeight.w500,
        fontSize: 16),
  ),
);

extension MaterialColorGenerator on Color {
  MaterialColor createMaterialColor() {
    final strengths = <double>[.05];
    final swatch = <int, Color>{};
    final r = red;
    final g = green;
    final b = blue;

    for (var i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (final strength in strengths) {
      final ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(value, swatch);
  }
}
