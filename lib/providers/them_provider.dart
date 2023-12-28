import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
 static const String key = "isDarkMode";
  bool _isDarkMode = false;
  bool get isDarkMode => _isDarkMode;

  ThemeProvider(){
    getThemeMode();
  }

  Future<void> setDarkTheme({required bool isDarkMode}) async{
    SharedPreferences pref =await  SharedPreferences.getInstance();
    pref.setBool(key, isDarkMode);
    _isDarkMode = isDarkMode;
    notifyListeners();
  }

  Future<bool> getThemeMode() async{
    SharedPreferences pref =await  SharedPreferences.getInstance();
    _isDarkMode = pref.getBool(key) ?? false;
    notifyListeners();
    return _isDarkMode;
  } 
}