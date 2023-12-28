import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopsmart_users/consts/app_colors.dart';
import 'package:shopsmart_users/consts/theme.dart';
import 'package:shopsmart_users/providers/them_provider.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider( create: (context) => ThemeProvider())],
      child: Consumer<ThemeProvider>(
        builder: (context,themeProvider,child) {
          return MaterialApp(
            title: 'ShopSmart Users',
            theme: Styles.themeData(
              context: context,
              isDarkMode: themeProvider.isDarkMode,
            ),
            home: const HomeScreen(),
          );
        }
      ),
    );
  }
}
