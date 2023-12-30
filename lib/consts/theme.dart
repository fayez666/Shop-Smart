import 'package:flutter/material.dart';
import 'package:shopsmart_users/consts/app_colors.dart';

class Styles {
  static ThemeData themeData({
    required BuildContext context,
    required bool isDarkMode,
  }) {
    return ThemeData(
      scaffoldBackgroundColor: isDarkMode ? Colors.black : Colors.white,
      cardColor: isDarkMode ? Colors.black : Colors.white,
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
      appBarTheme: AppBarTheme(
        backgroundColor:
            isDarkMode ? AppColors.darkScaffoldColor : AppColors.lightCardColor,
        elevation: 0.0,
        centerTitle: false,
        titleTextStyle: TextStyle(
          color: isDarkMode ? Colors.white : Colors.black,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
