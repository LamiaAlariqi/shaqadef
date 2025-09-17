
import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/size.dart';


class AppTextStyle {
  static AppTextStyle instance = AppTextStyle();

  TextStyle displayLarge = TextStyle(
    color: appTextColorPrimary,
    fontSize: 57,
    fontWeight: FontWeight.bold,
  );
  TextStyle displayMedium = TextStyle(
    color: appTextColorPrimary,
    fontSize: 45,
    fontWeight: FontWeight.bold,
  );
  TextStyle displaySmall = TextStyle(
   color: appTextColorPrimary,
    fontSize: fontSize(size: 30),
    fontWeight: FontWeight.bold,
  );
  TextStyle headlineLarge = TextStyle(
    color: appTextColorPrimary,
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );
  TextStyle headlineMedium = TextStyle(
    color: appTextColorPrimary,
    fontSize: 28,
    fontWeight: FontWeight.bold,
  );
  TextStyle headlineSmall = TextStyle(
    color: appTextColorPrimary,
    fontSize: fontSize(size: 16),
    fontWeight: FontWeight.bold,
    // fontFamily: defaultFont,
  );

  //no used in other use
  TextStyle titleLarge = TextStyle(
    fontWeight: FontWeight.bold,
    color: appTextColorPrimary,
    fontSize: fontSize(size: 17),
    //berfor 20
  );
  TextStyle titleMedium = TextStyle(
    fontWeight: FontWeight.bold,
    color: appTextColorPrimary,
    fontSize: fontSize(size: 15),
    //berfor 18
  );
  TextStyle titleSmall = TextStyle(
    color: appTextColorPrimary,
    fontSize: 14,
  );
  TextStyle labelLarge = TextStyle(
    color: appTextColorPrimary,
    fontSize: 22,
    // fontFamily: defaultFont,
  );
  TextStyle labelMedium = TextStyle(
    color: appTextColorPrimary,
    // fontFamily: defaultFont,
    fontSize: fontSize(size: 20),
  );
  TextStyle labelSmall = TextStyle(
    color: appTextColorPrimary,
    // fontFamily: defaultFont,
    fontSize: fontSize(size: 12),
  );
  TextStyle bodyLarge = TextStyle(
    color: appTextColorPrimary,
    fontSize: fontSize(size: 18),
    // fontFamily: defaultFont,
  );
  TextStyle bodyMedium = TextStyle(
    color: appTextColorPrimary,
    fontSize: fontSize(size: 16),
    // fontFamily: defaultFont,
  );
  TextStyle bodySmall = TextStyle(
    color: appTextColorPrimary,
    // fontFamily: defaultFont,
    fontSize: fontSize(size: 14),
  );
}
