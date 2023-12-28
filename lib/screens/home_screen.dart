import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopsmart_users/providers/them_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themProvider =
                  Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Home Screen',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              )),
          ElevatedButton(onPressed: () {}, child: const Text('Hello Wworld')),
          SwitchListTile(
            value: themProvider.isDarkMode,
            onChanged: (value) {
              
              themProvider.setDarkTheme(isDarkMode: value);
            },
            title:  Text(themProvider.isDarkMode ? 'Dark Theme' : 'Light Theme'),
          ),
        ],
      ),
    );
  }
}
