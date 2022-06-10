import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movplus_mvvm/ui/theme/app_colors.dart';

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
  final AppTextTheme textTheme;

  AppTheme({
    required this.mode,
    required this.data,
    required this.textTheme,
  });

  factory AppTheme.light() {
    const mode = ThemeMode.light;
    final themeData = ThemeData.light().copyWith(
      textTheme: ThemeData.light().textTheme,
    );
    return AppTheme(mode: mode, data: themeData, textTheme: AppTextTheme());
  }

  factory AppTheme.dark() {
    const mode = ThemeMode.dark;
    final themeData = ThemeData.dark().copyWith(
      textTheme: ThemeData.light().textTheme,
      scaffoldBackgroundColor: AppColors.cinder,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.alizarinCrimson,
        background: AppColors.cinder,
      ),
    );
    return AppTheme(mode: mode, data: themeData, textTheme: AppTextTheme());
  }
}
