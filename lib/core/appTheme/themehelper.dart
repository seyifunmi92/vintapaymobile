import 'package:flutter/material.dart';
import 'package:vintapay/core/constants/colorconstants.dart';
import 'package:vintapay/core/layoutbuilder/responsiveness.dart';

class AppTheme {
  ///returns light themeData
  static ThemeData get lightMode => ThemeData(
      appBarTheme: const AppBarTheme(
          color: vColor.white,
          iconTheme: IconThemeData(color: vColor.vPrimaryColor)),
      brightness: Brightness.light,
      scaffoldBackgroundColor: vColor.scaffoldLight,
      canvasColor: vColor.scaffoldLight,
      fontFamily: "poppins",
      textTheme: TextTheme(
        bodyLarge: TextStyle(
          fontSize: 40.fSize,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          fontSize: 20.fSize,
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          fontSize: 10.fSize,
          fontWeight: FontWeight.w400,
        ).apply(color: vColor.black.withOpacity(.6)),
      ),
      colorScheme: const ColorScheme.light(
        onPrimary: vColor.primaryTextLight,
        onSecondary: vColor.secondaryTextLight,
        primary: vColor.vPrimaryColor,
        secondary: vColor.vSecondaryColor,
        primaryContainer: vColor.primaryContainerLight,
        secondaryContainer: vColor.secondaryContainerLight,
        error: vColor.primaryTextLight,
      ),
      iconTheme: const IconThemeData(color: vColor.vPrimaryColor));

  ///returns darkthemeData
  static ThemeData get darkMode => ThemeData(
      appBarTheme: const AppBarTheme(
          color: vColor.darkMode,
          iconTheme: IconThemeData(color: vColor.vPrimaryColor)),
      brightness: Brightness.dark,
      scaffoldBackgroundColor: vColor.scaffoldDark,
      canvasColor: vColor.scaffoldDark,
      fontFamily: "poppins",
      textTheme: TextTheme(
        bodyLarge: TextStyle(
          fontSize: 40.fSize,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          fontSize: 20.fSize,
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          fontSize: 10.fSize,
          fontWeight: FontWeight.w400,
        ).apply(color: vColor.black.withOpacity(.6)),
      ),
      colorScheme: const ColorScheme.dark(
        onPrimary: vColor.primaryTextDark,
        onSecondary: vColor.secondaryTextDark,
        primary: vColor.vPrimaryColor,
        secondary: vColor.vSecondaryColor,
        primaryContainer: vColor.primaryContainerDark,
        secondaryContainer: vColor.secondaryContainerDark,
        error: vColor.primaryContainerDark,
      ),
      iconTheme: const IconThemeData(color: vColor.vPrimaryColor));
}
