// import 'package:flutter/material.dart';
//
// import '../utils/dimensions.dart';
//
// const String latoFontStyle = "Lato";
// const String proximaNovaStyle = 'ProximaNova';
//
// class AppStyles {
//   static TextStyle headLineSmall = const TextStyle(
//     fontFamily: proximaNovaStyle,
//     fontWeight: FontWeight.w500,
//     fontSize: fontSize24,
//   );
//
//   static TextStyle headlineMedium = const TextStyle(
//     fontFamily: proximaNovaStyle,
//     fontWeight: FontWeight.w500,
//     fontSize: fontSize28,
//   );
//
//   static TextStyle headlineLarge = const TextStyle(
//     fontFamily: proximaNovaStyle,
//     fontWeight: FontWeight.w600,
//     fontSize: fontSize32,
//   );
//
//   static TextStyle mediumBold = const TextStyle(
//     fontFamily: latoFontStyle,
//     fontWeight: FontWeight.w600,
//     fontSize: fontSize16,
//   );
//
//   static TextStyle mediumRegular = const TextStyle(
//     fontFamily: proximaNovaStyle,
//     fontWeight: FontWeight.w400,
//     fontSize: fontSize20,
//   );
//
//   static TextStyle veryLargeProximaNova = const TextStyle(
//     fontFamily: proximaNovaStyle,
//     fontWeight: FontWeight.w500,
//     fontSize: fontSize57,
//     height: 1.1228,
//   );
//
//   static TextStyle displayMedium = const TextStyle(
//     fontFamily: proximaNovaStyle,
//     fontWeight: FontWeight.w400,
//     fontSize: fontSize45,
//   );
//
//   static TextStyle titleLarge = const TextStyle(
//     fontFamily: latoFontStyle,
//     fontWeight: FontWeight.w700,
//     fontSize: fontSize22,
//   );
//   static TextStyle titleSemiLarge = const TextStyle(
//     fontFamily: latoFontStyle,
//     fontWeight: FontWeight.w600,
//     fontSize: fontSize20,
//   );
//   static TextStyle bodyLarge = const TextStyle(
//     fontFamily: latoFontStyle,
//     fontWeight: FontWeight.w400,
//     fontSize: fontSize16,
//   );
//   static TextStyle bodyMedium = const TextStyle(
//     fontFamily: latoFontStyle,
//     fontWeight: FontWeight.w400,
//     fontSize: fontSize14,
//   );
//   static TextStyle bodyMediumBold = const TextStyle(
//     fontFamily: latoFontStyle,
//     fontWeight: FontWeight.w600,
//     fontSize: fontSize14,
//   );
//
//   static TextStyle titleSmall = const TextStyle(
//     fontFamily: latoFontStyle,
//     fontWeight: FontWeight.w500,
//     fontSize: fontSize18,
//   );
//
//   static TextStyle titleSmallBold = const TextStyle(
//     fontFamily: latoFontStyle,
//     fontWeight: FontWeight.w600,
//     fontSize: fontSize18,
//   );
//
//   static TextStyle titleLargeBold = const TextStyle(
//     fontFamily: latoFontStyle,
//     fontWeight: FontWeight.w600,
//     fontSize: fontSize22,
//   );
//
//   static TextStyle titleMedium = const TextStyle(
//     fontFamily: latoFontStyle,
//     fontWeight: FontWeight.w400,
//     fontSize: fontSize18,
//   );
//
//   static TextStyle titleMediumBold = const TextStyle(
//     fontFamily: proximaNovaStyle,
//     fontWeight: FontWeight.w600,
//     fontSize: fontSize20,
//   );
//
//   static TextStyle titleSmallBoldProxima = const TextStyle(
//     fontFamily: proximaNovaStyle,
//     fontWeight: FontWeight.w600,
//     fontSize: fontSize18,
//   );
//
//   static TextStyle labelLarge = const TextStyle(
//     fontFamily: latoFontStyle,
//     fontWeight: FontWeight.w400,
//     fontSize: fontSize16,
//   );
//   static TextStyle labelMedium = const TextStyle(
//     fontFamily: latoFontStyle,
//     fontWeight: FontWeight.w600,
//     fontSize: fontSize14,
//   );
//   static TextStyle labelSmall = const TextStyle(
//     fontFamily: latoFontStyle,
//     fontWeight: FontWeight.w400,
//     fontSize: fontSize12,
//   );
//
//   static TextStyle textSmRegular = const TextStyle(
//     fontFamily: latoFontStyle,
//     fontWeight: FontWeight.w400,
//     fontSize: fontSize14,
//   );
// }

import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import '../utils/dimensions.dart';

class AppStyles {
  static String getFontFamily() {
    final lang = ui.PlatformDispatcher.instance.locale.languageCode;
    switch (lang) {
      case 'ar':
        return 'Cairo';
      case 'ku':
      case 'ur':
      case 'sdh':
      case 'lrc':
        return 'NotoSansArabic';
      default:
        return 'Cairo';
    }
  }

  static TextStyle headLineSmall = TextStyle(
    fontFamily: getFontFamily(),
    fontWeight: FontWeight.w500,
    fontSize: fontSize24,
  );

  static TextStyle headLineSmallBold = TextStyle(
    fontFamily: getFontFamily(),
    fontWeight: FontWeight.w600,
    fontSize: fontSize24,
  );

  static TextStyle headlineMedium = TextStyle(
    fontFamily: getFontFamily(),
    fontWeight: FontWeight.w500,
    fontSize: fontSize28,
  );

  static TextStyle headlineMediumBold = TextStyle(
    fontFamily: getFontFamily(),
    fontWeight: FontWeight.w600,
    fontSize: fontSize28,
  );

  static TextStyle headlineLarge = TextStyle(
    fontFamily: getFontFamily(),
    fontWeight: FontWeight.w600,
    fontSize: fontSize32,
  );

  static TextStyle mediumBold = TextStyle(
    fontFamily: getFontFamily(),
    fontWeight: FontWeight.w600,
    fontSize: fontSize16,
  );

  static TextStyle mediumRegular = TextStyle(
    fontFamily: getFontFamily(),
    fontWeight: FontWeight.w400,
    fontSize: fontSize20,
  );

  static TextStyle veryLargeProximaNova = TextStyle(
    fontFamily: getFontFamily(),
    fontWeight: FontWeight.w500,
    fontSize: fontSize57,
    height: 1.1228,
  );

  static TextStyle displayMedium = TextStyle(
    fontFamily: getFontFamily(),
    fontWeight: FontWeight.w400,
    fontSize: fontSize45,
  );

  static TextStyle titleLarge = TextStyle(
    fontFamily: getFontFamily(),
    fontWeight: FontWeight.w700,
    fontSize: fontSize22,
  );

  static TextStyle titleSemiLarge = TextStyle(
    fontFamily: getFontFamily(),
    fontWeight: FontWeight.w600,
    fontSize: fontSize20,
  );

  static TextStyle bodyLarge = TextStyle(
    fontFamily: getFontFamily(),
    fontWeight: FontWeight.w400,
    fontSize: fontSize16,
  );

  static TextStyle bodyLargeBold = TextStyle(
    fontFamily: getFontFamily(),
    fontWeight: FontWeight.w600,
    fontSize: fontSize16,
  );

  static TextStyle bodyMedium = TextStyle(
    fontFamily: getFontFamily(),
    fontWeight: FontWeight.w400,
    fontSize: fontSize14,
  );

  static TextStyle bodyMediumBold = TextStyle(
    fontFamily: getFontFamily(),
    fontWeight: FontWeight.w600,
    fontSize: fontSize14,
  );

  static TextStyle titleSmall = TextStyle(
    fontFamily: getFontFamily(),
    fontWeight: FontWeight.w500,
    fontSize: fontSize18,
  );

  static TextStyle titleSmallBold = TextStyle(
    fontFamily: getFontFamily(),
    fontWeight: FontWeight.w600,
    fontSize: fontSize18,
  );

  static TextStyle titleLargeBold = TextStyle(
    fontFamily: getFontFamily(),
    fontWeight: FontWeight.w600,
    fontSize: fontSize22,
  );

  static TextStyle titleMedium = TextStyle(
    fontFamily: getFontFamily(),
    fontWeight: FontWeight.w400,
    fontSize: fontSize18,
  );

  static TextStyle titleMediumBold = TextStyle(
    fontFamily: getFontFamily(),
    fontWeight: FontWeight.w600,
    fontSize: fontSize20,
  );

  static TextStyle titleSmallBoldProxima = TextStyle(
    fontFamily: getFontFamily(),
    fontWeight: FontWeight.w600,
    fontSize: fontSize18,
  );

  static TextStyle labelLarge = TextStyle(
    fontFamily: getFontFamily(),
    fontWeight: FontWeight.w400,
    fontSize: fontSize16,
  );

  static TextStyle labelMedium = TextStyle(
    fontFamily: getFontFamily(),
    fontWeight: FontWeight.w600,
    fontSize: fontSize14,
  );

  static TextStyle labelSmall = TextStyle(
    fontFamily: getFontFamily(),
    fontWeight: FontWeight.w400,
    fontSize: fontSize12,
  );

  static TextStyle textSmRegular = TextStyle(
    fontFamily: getFontFamily(),
    fontWeight: FontWeight.w400,
    fontSize: fontSize14,
  );
}
