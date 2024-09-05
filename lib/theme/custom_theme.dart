import 'package:flutter/material.dart';

class CustomThemeData {
  final double imageSize;

  CustomThemeData({
    this.imageSize = 100,
  });
}

/// LIGHT THEME
final _customTheme = CustomThemeData();
final theme = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.purpleAccent,
  ),
  primaryColor: Colors.purpleAccent,
);

/// DARK THEME
final _customDarkTheme = CustomThemeData();
final darkTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.deepPurple,
  ),
  brightness: Brightness.dark,
  primaryColor: Colors.deepPurple,
);

extension CustomTheme on ThemeData {
  CustomThemeData get custom =>
      brightness == Brightness.dark ? _customDarkTheme : _customTheme;
}
