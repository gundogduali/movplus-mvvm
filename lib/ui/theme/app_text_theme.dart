import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'font_size.dart';

class AppTextTheme {
  final TextTheme textTheme;
  const AppTextTheme._({
    required this.textTheme,
  });

  factory AppTextTheme() {
    TextTheme _interTextTheme = GoogleFonts.interTextTheme();
    return AppTextTheme._(
      textTheme: _interTextTheme.copyWith(
        headline1: _interTextTheme.headline1!.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: FontSize.pt24,
          letterSpacing: 0,
        ),
        headline2: _interTextTheme.headline2!.copyWith(
          fontWeight: FontWeight.w700,
          fontSize: FontSize.pt20,
          letterSpacing: 0,
        ),
        headline6: _interTextTheme.headline6!.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: FontSize.pt18,
          letterSpacing: 0,
        ),
        subtitle1: _interTextTheme.subtitle1!.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: FontSize.pt16,
          letterSpacing: 0,
        ),
        subtitle2: _interTextTheme.subtitle2!.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: FontSize.pt14,
          letterSpacing: 0,
        ),
        bodyText1: _interTextTheme.bodyText1!.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: FontSize.pt16,
          letterSpacing: 0,
        ),
        bodyText2: _interTextTheme.bodyText2!.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: FontSize.pt14,
          letterSpacing: 0,
        ),
        caption: _interTextTheme.caption!.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: FontSize.pt10,
          letterSpacing: 0,
        ),
        button: _interTextTheme.button!.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: FontSize.pt10,
          letterSpacing: 0,
        ),
      ),
    );
  }
}
