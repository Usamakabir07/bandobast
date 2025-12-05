import 'package:bandobast/app/themes/app_colors.dart';
import 'package:bandobast/app/themes/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import 'dimensions.dart';

InputDecoration defaultInputDarkDecoration({
  required String hintText,
  String? labelText,
  Widget? prefixIcon,
  Widget? suffixIcon,
}) {
  return InputDecoration(
    hintText: hintText,
    counterText: '',
    hintStyle: AppStyles.labelLarge.copyWith(color: AppColors.white.withValues(alpha: double07)),
    errorStyle: AppStyles.labelMedium.copyWith(color: AppColors.errorColor),
    fillColor: AppColors.white.withValues(alpha: double01),
    filled: true,
    prefixIconColor: AppColors.white.withValues(alpha: double07),
    contentPadding:const EdgeInsets.symmetric(
      vertical: padding20,
      horizontal: padding20,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius18),
      borderSide: const BorderSide(color: AppColors.boulder, width: width1),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius18),
      borderSide: const BorderSide(color: AppColors.boulder, width: width1),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius18),
      borderSide: const BorderSide(
        color: AppColors.seaGreen,
        width: width2,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius18),
      borderSide: const BorderSide(color: AppColors.errorColor, width: width1),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius18),
      borderSide: const BorderSide(
        color: AppColors.seaGreen,
        width: width2,
      ),
    ),

    prefixIcon: prefixIcon,
    suffixIcon: suffixIcon,
  );
}

InputDecoration defaultInputLightDecoration({
  required String hintText,
  String? labelText,
  Widget? prefixIcon,
  Widget? suffixIcon,
}) {
  return InputDecoration(
    hintText: hintText,
    counterText: '',

    hintStyle: AppStyles.labelLarge.copyWith(color: AppColors.boulder),
    errorStyle: AppStyles.labelMedium.copyWith(color: AppColors.errorColor),
    fillColor: AppColors.boulder.withValues(alpha: double01),
    filled: true,
    prefixIconColor: AppColors.boulder,
    contentPadding: const EdgeInsets.symmetric(
      vertical: padding20,
      horizontal: padding20,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius18),
      borderSide: const BorderSide(color: AppColors.boulder, width: width1),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius18),
      borderSide: const BorderSide(color: AppColors.boulder, width: width1),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius18),
      borderSide: const BorderSide(
        color: AppColors.seaGreen,
        width: width2,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius18),
      borderSide: const BorderSide(color: AppColors.errorColor, width: width1),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius18),
      borderSide: const BorderSide(
        color: AppColors.seaGreen,
        width: width2,
      ),
    ),

    prefixIcon: prefixIcon,
    suffixIcon: suffixIcon,
  );
}

PinTheme defaultDarkPinTheme({required ValueNotifier<bool> hasError}) {
  return PinTheme(
    width: height56,
    height: width56,
    textStyle: AppStyles.headLineSmallBold.copyWith(color: AppColors.white),
    decoration: BoxDecoration(
      color: AppColors.white.withValues(alpha: double01),
      borderRadius: BorderRadius.circular(borderRadius12),
      border: Border.all(
        color:
            hasError.value
                ? AppColors.errorColor
                : AppColors.seaGreen,
      ),
    ),
  );
}

PinTheme defaultLightPinTheme({required ValueNotifier<bool> hasError}) {
  return PinTheme(
    width: height56,
    height: width56,
    textStyle: AppStyles.headLineSmallBold.copyWith(color: AppColors.silverTree),
    decoration: BoxDecoration(
      color: AppColors.white.withValues(alpha: double01),
      borderRadius: BorderRadius.circular(borderRadius12),
      border: Border.all(
        color:
            hasError.value
                ? AppColors.errorColor
                : AppColors.seaGreen,
      ),
    ),
  );
}
