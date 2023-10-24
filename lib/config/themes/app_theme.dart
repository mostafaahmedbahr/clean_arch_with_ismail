import 'package:clean_arch_with_ismail/core/utiles/app_sources/app_colors.dart';
 import 'package:flutter/material.dart';

import '../../core/utiles/app_sources/app_strings.dart';

ThemeData appTheme()
{
  return ThemeData(
    primaryColor: AppColors.primary,
    hintColor: AppColors.hint,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.white,
    fontFamily: AppStrings.appFontName,
    textTheme: TextTheme(
      labelLarge: TextStyle(
        fontSize: 16,
        color: AppColors.black,
        fontWeight: FontWeight.w500
      ),

    ),
  );
}