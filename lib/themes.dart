import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

ThemeData themeData(BuildContext context) {
  return ThemeData(
    appBarTheme: appBarTheme,
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: Colors.white,
    iconTheme: const IconThemeData(color: kBodyTextColorLight),
    primaryIconTheme: const IconThemeData(color: kAccentIconLightColor),
    textTheme: GoogleFonts.latoTextTheme().copyWith(
      bodyText1: const TextStyle(color: kBodyTextColorLight),
      bodyText2: const TextStyle(color: kBodyTextColorLight),
      headline1: const TextStyle(color: kTitleTextLightColor, fontSize: 32),
      headline4: const TextStyle(color: kTitleTextLightColor, fontSize: 40),
    ), colorScheme: const ColorScheme.light(
      secondary: kSecondaryLightColor
  ).copyWith(secondary: kAccentLightColor),

  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
      appBarTheme: appBarTheme,
      primaryColor: kPrimaryColor,
      scaffoldBackgroundColor: const Color(0xFF0D0C0E),
      backgroundColor: kBackgroundDarkColor,
      iconTheme: const IconThemeData(color: kBodyTextColorDark),
      primaryIconTheme: const IconThemeData(color: kPrimaryIconDarkColor),
      textTheme: GoogleFonts.latoTextTheme().copyWith(
          bodyText1: const TextStyle(color: kBodyTextColorDark),
          bodyText2: const TextStyle(color: kBodyTextColorDark),
          headline1: const TextStyle(color: kTitleTextDarkColor, fontSize: 20),
          headline4: const TextStyle(color: kTitleTextDarkColor, fontSize: 40)
      ), colorScheme: const ColorScheme.light(
      secondary: kSecondaryDarkColor,
      surface: kSurfaceDarkColor).copyWith(secondary: kAccentDarkColor)
  );
}

AppBarTheme appBarTheme = const AppBarTheme(color: Colors.transparent, elevation: 0);