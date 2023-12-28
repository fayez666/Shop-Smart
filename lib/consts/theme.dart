import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData({
    required BuildContext context,
    required bool isDarkMode,
  }) {
    return ThemeData(
      scaffoldBackgroundColor:
          isDarkMode ? Colors.black : Colors.white,
      cardColor: isDarkMode ? Colors.black : Colors.white,
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
    );
  }
}
