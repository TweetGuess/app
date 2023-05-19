import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// TODO: import better color schemes
// Basically all of our themes with some tweaks so the UI is more consistent (rounded corners)
ThemeData lightThemeData() {
  var theme = FlexThemeData.light(
    colors: const FlexSchemeColor(
      primary: Color(0xff004881),
      primaryContainer: Color(0xffd0e4ff),
      secondary: Color(0xffac3306),
      secondaryContainer: Color(0xffffdbcf),
      tertiary: Color(0xff006875),
      tertiaryContainer: Color(0xff95f0ff),
      appBarColor: Color(0xffffdbcf),
      error: Color(0xffb00020),
    ),
    surfaceMode: FlexSurfaceMode.level,
    blendLevel: 9,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 10,
      blendOnColors: false,
    ),
    fontFamily: GoogleFonts.lato().fontFamily,
    useMaterial3ErrorColors: true,
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
    swapLegacyOnMaterial3: true,
    // To use the playground font, add GoogleFonts package and uncomment
    // fontFamily: GoogleFonts.notoSans().fontFamily,
  );

  theme = theme.copyWith(
    appBarTheme: theme.appBarTheme.copyWith(
      centerTitle: true,
      titleTextStyle: theme.appBarTheme.titleTextStyle?.copyWith(
        fontWeight: FontWeight.w600,
        letterSpacing: 1.5,
      ),
    ),
  );

  return theme;
}

ThemeData darkThemeData() {
  var theme = FlexThemeData.dark(
    colors: const FlexSchemeColor(
      primary: Color(0xff54a9ec),
      primaryContainer: Color(0xff00325b),
      secondary: Color(0xff264a653),
      tertiary: Color(0xff86d2e1),
      tertiaryContainer: Color(0xff004e59),
      error: Color(0xffcf6679),
    ),
    surfaceMode: FlexSurfaceMode.level,
    blendLevel: 15,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 20,
    ),
    useMaterial3ErrorColors: true,
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
    swapLegacyOnMaterial3: true,
    fontFamily: GoogleFonts.lato().fontFamily,
    // To use the Playground font, add GoogleFonts package and uncomment
    // fontFamily: GoogleFonts.notoSans().fontFamily,
  );

  theme = theme.copyWith(
    appBarTheme: theme.appBarTheme.copyWith(
      centerTitle: true,
      titleTextStyle: theme.appBarTheme.titleTextStyle?.copyWith(
        fontWeight: FontWeight.w600,
        letterSpacing: 1.5,
      ),
    ),
  );

  return theme;
}
