import 'package:flutter/material.dart';
import 'package:laza_ecommerce_app/core/styling/app_colors.dart';
import 'package:laza_ecommerce_app/core/styling/app_fonts.dart';
import 'package:laza_ecommerce_app/core/styling/app_styles.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    primaryColor: AppColors.primarycolor,
    scaffoldBackgroundColor: AppColors.whitecolor,
    fontFamily: AppFonts.mainfontName,

    textTheme: TextTheme(
      titleLarge: AppStyles.primaryheadlinestyle,
      titleMedium: AppStyles.secondaryheadlinestyle,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primarycolor,
      disabledColor: AppColors.secondarycolor,
    ),
  );
}
