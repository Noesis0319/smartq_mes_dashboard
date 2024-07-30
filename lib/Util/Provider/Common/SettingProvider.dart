
import 'package:flutter/material.dart';
import '/Util/Provider/BaseProvider.dart';

class SettingsProvider extends BaseProvider{
  ThemeData themeData;
  Color? seedColor;

  SettingsProvider({required this.themeData});

  setTheme({required Color seedColor, Brightness? brightness}){
    ThemeData newThemeData = ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: seedColor, brightness: brightness?? Brightness.light, primary: seedColor));

    this.seedColor = seedColor;
    themeData = newThemeData;
    notifyListeners();
  }
}