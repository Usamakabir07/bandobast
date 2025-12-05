import 'package:flutter/material.dart';
import '../themes/app_colors.dart';
import '../themes/app_styles.dart';
import '../utils/dimensions.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.gravel,
      selectionColor: AppColors.iron,
    ),
    scaffoldBackgroundColor: AppColors.white,
    primaryColor: AppColors.primaryColor,
    appBarTheme: const AppBarTheme(color: AppColors.white),
    colorScheme: const ColorScheme.light(primary: AppColors.white),
    iconTheme: const IconThemeData(color: AppColors.gravel),
    primaryIconTheme: const IconThemeData(color: AppColors.gravel),
    textTheme: ThemeData.light().textTheme,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.white,
      hintStyle: AppStyles.labelLarge.copyWith(color: AppColors.boulder),
      errorStyle: AppStyles.labelMedium,
      contentPadding: const EdgeInsets.symmetric(
        vertical: padding20,
        horizontal: padding20,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius12),
        borderSide: const BorderSide(color: AppColors.gravel, width: width1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius12),
        borderSide: const BorderSide(color: AppColors.gravel, width: width1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius12),
        borderSide: const BorderSide(color: AppColors.gravel, width: width3),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius12),
        borderSide: const BorderSide(
          color: AppColors.errorColor,
          width: width2,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius12),
        borderSide: const BorderSide(color: AppColors.gravel, width: width3),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.cinder,
    primaryColor: AppColors.primaryColor,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.boulder,
      selectionColor: AppColors.gravel,
    ),
    appBarTheme: const AppBarTheme(color: AppColors.cinder),
    colorScheme: const ColorScheme.dark(primary: AppColors.cinder),
    iconTheme: const IconThemeData(color: AppColors.white),
    primaryIconTheme: const IconThemeData(color: AppColors.gravel),
    textTheme: ThemeData.dark().textTheme,
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: AppStyles.labelLarge.copyWith(color: AppColors.boulder),
      contentPadding: const EdgeInsets.symmetric(
        vertical: padding20,
        horizontal: padding20,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius12),
        borderSide: const BorderSide(color: AppColors.white, width: width1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius12),
        borderSide: const BorderSide(color: AppColors.white, width: width1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius12),
        borderSide: const BorderSide(color: AppColors.white, width: width3),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius12),
        borderSide: const BorderSide(
          color: AppColors.errorColor,
          width: width1,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius12),
        borderSide: const BorderSide(color: AppColors.white, width: width3),
      ),
    ),
  );
}
