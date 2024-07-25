import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.dark;
  String currentLang = 'en';

  void changeAppLocal(String newLang) {
    if (newLang == currentLang) return;
    currentLang = newLang;
    notifyListeners();
  }

  void changeApplicationTheme(ThemeMode newTheme) {
    if (newTheme == currentTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }

  String getBackgroundImage() {
    return currentTheme == ThemeMode.light
        ? 'assets/images/main_bg.png'
        : 'assets/images/main-bg-dark.png';
  }
}
