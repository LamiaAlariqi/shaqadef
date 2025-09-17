import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/constants/textstyle.dart';


class AppThemeData {
  static final AppTextStyle _textStyle = AppTextStyle.instance;

  static ThemeData lightTheme() => ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: appScaffoldBackgroundColor,
        primaryColor: PrimaryColor,
        primaryColorDark: appPrimaryColorDark,
        primaryColorLight: appPrimaryColorLight,

        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
              minimumSize: WidgetStatePropertyAll(Size(100, 70)),
            foregroundColor: WidgetStatePropertyAll(appWhite),
            iconColor: WidgetStatePropertyAll(appWhite),
            backgroundColor: WidgetStatePropertyAll(PrimaryColor),
          ),
        ),

        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            color: appBlack,
            fontSize: fontSize(size: 20),
            fontWeight: FontWeight.bold,
            height: 3,
          ),
          centerTitle: true,
          iconTheme: IconThemeData(
            color: appBlack,
            size: hScreen * .03,
          ),
          backgroundColor: appScaffoldBackgroundColor,
        ),

        iconTheme: const IconThemeData(
          size: 28,
          color: appPrimaryColorDark,
        ),

        // cardTheme: const CardTheme(
        //   color: appWhite,
        // ),

        dividerColor: appWhite,
        dividerTheme: const DividerThemeData(color: appBlack),

        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.fromLTRB(24, 18, 24, 18),
          filled: true,
          fillColor: appPrimaryColorLight,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide(width: 1.0, color: appPrimaryColorDark),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide(width: 1.0, color: PrimaryColor),
          ),
        ),

        textTheme: TextTheme(
          displayLarge: _textStyle.displayLarge,
          displayMedium: _textStyle.displayMedium,
          displaySmall: _textStyle.displaySmall,
          headlineLarge: _textStyle.headlineLarge,
          headlineMedium: _textStyle.headlineMedium,
          headlineSmall: _textStyle.headlineSmall,
          titleLarge: _textStyle.titleLarge,
          titleSmall: _textStyle.titleSmall,
          titleMedium: _textStyle.titleMedium,
          labelLarge: _textStyle.labelLarge,
          labelMedium: _textStyle.labelMedium,
          labelSmall: _textStyle.labelSmall,
          bodyLarge: _textStyle.bodyLarge,
          bodyMedium: _textStyle.bodyMedium,
          bodySmall: _textStyle.bodySmall,
        ),
      );
}