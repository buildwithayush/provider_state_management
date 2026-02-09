import 'package:flutter/material.dart';

class ThemeChangeProvider with ChangeNotifier {
  var _theme = ThemeMode.dark;
  
  ThemeMode get themeMode => _theme;

  void setTheme(ThemeMode themePass){
    _theme = themePass;
    notifyListeners();
  }
}