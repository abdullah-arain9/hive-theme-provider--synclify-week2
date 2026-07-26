import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class ThemeManager {
  static ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.light);

  // App start pe saved theme load karo
  static Future<void> loadTheme() async {
    var themeBox = await Hive.openBox('themeBox');
    bool isDark = themeBox.get('isDarkMode', defaultValue: false);
    themeNotifier.value = isDark ? ThemeMode.dark : ThemeMode.light;
  }

  // Theme toggle karo aur Hive mein save karo
  static Future<void> toggleTheme() async {
    var themeBox = await Hive.openBox('themeBox');
    bool isDark = themeNotifier.value == ThemeMode.dark;
    themeNotifier.value = isDark ? ThemeMode.light : ThemeMode.dark;
    themeBox.put('isDarkMode', !isDark);
  }
}