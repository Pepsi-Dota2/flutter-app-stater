import 'package:flutter/material.dart';
import 'package:flutter_app_stater/src/core/constant/constant_colors.dart';

final ThemeData clinicTheme = ThemeData(
  primaryColor: AppColors.primary,
  scaffoldBackgroundColor: AppColors.background,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: AppColors.textPrimary, fontSize: 16.0),
    bodyMedium: TextStyle(color: AppColors.textSecondary, fontSize: 14.0),
    bodySmall: TextStyle(color: AppColors.textPrimary, fontWeight: FontWeight.bold, fontSize: 24.0),
  ),
  appBarTheme: const AppBarTheme(
    color: AppColors.primary,
    titleTextStyle: TextStyle(color: AppColors.textLight, fontSize: 20.0),
    iconTheme: IconThemeData(color: AppColors.textLight),
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: AppColors.primary,
    textTheme: ButtonTextTheme.primary,
  ),
  cardColor: AppColors.cardBackground,
  dividerColor: AppColors.divider,
);
