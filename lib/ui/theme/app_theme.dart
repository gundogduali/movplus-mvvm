import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app_colors.dart';
import 'app_text_theme.dart';

final appThemeModeProvider =
    StateNotifierProvider<StateController<ThemeMode>, ThemeMode>(
  (ref) => StateController(ThemeMode.dark),
);

final appThemeProvider = Provider<AppTheme>(
  (ref) {
    final mode = ref.watch(appThemeModeProvider);
    switch (mode) {
      case ThemeMode.dark:
        return AppTheme.dark();
      case ThemeMode.light:
      default:
        return AppTheme.light();
    }
  },
);

class AppTheme {
  final ThemeMode mode;
  final ThemeData data;

  AppTheme({
    required this.mode,
    required this.data,
  });

  factory AppTheme.light() {
    const mode = ThemeMode.light;
    final themeData = ThemeData.light().copyWith(
      textTheme: ThemeData.light().textTheme,
    );
    return AppTheme(mode: mode, data: themeData);
  }

  factory AppTheme.dark() {
    const mode = ThemeMode.dark;
    final themeData = ThemeData.dark().copyWith(
        textTheme: AppTextTheme().textTheme,
        scaffoldBackgroundColor: AppColors.cinder,
        colorScheme: const ColorScheme.dark(
          primary: AppColors.alizarinCrimson,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: AppColors.ebonyClay,
          selectedItemColor: AppColors.alizarinCrimson,
          selectedIconTheme: const IconThemeData(
            size: 24,
          ),
          unselectedIconTheme: const IconThemeData(
            size: 24,
          ),
          selectedLabelStyle: AppTextTheme().textTheme.caption,
          unselectedLabelStyle: AppTextTheme().textTheme.caption,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.white),
          ),
          isCollapsed: true,
        ));
    return AppTheme(mode: mode, data: themeData);
  }
}
