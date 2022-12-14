import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeColors {
  static Color mint500 = const Color(0xff20C5B5);
  static Color mint400 = const Color(0xff40E0D0);
  static Color mint200 = const Color(0xffB7F2EF);
  static Color mint100 = const Color(0xffE9FBFA);
  static Color teal800 = const Color(0xff1A3440);
  static Color coral400 = const Color(0xfff3b08e);
  static Color black = const Color(0xff000000);
  static Color white = const Color(0xffffffff);
  static Color gray300 = const Color(0xffadadad);
  static Color gray500 = const Color(0xff7c7c7c);
//TODO: add all colors

}

final TextTheme textTheme = TextTheme(
  headline1: GoogleFonts.roboto(
    fontSize: 96,
    fontWeight: FontWeight.w300,
    letterSpacing: -1.5,
  ),
  headline2: GoogleFonts.roboto(
    fontSize: 72,
    fontWeight: FontWeight.w300,
    letterSpacing: -0.5,
  ),
  headline3: GoogleFonts.roboto(
    fontSize: 48,
    fontWeight: FontWeight.w400,
  ),
  headline4: GoogleFonts.roboto(),
  headline5: GoogleFonts.roboto(
      color: ThemeColors.black,
      fontSize: 24,
      fontWeight: FontWeight.w400,
      height: 32),
  headline6: GoogleFonts.roboto(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      height: 1.32,
      letterSpacing: 0.15),
  button: GoogleFonts.roboto(
      fontSize: 13,
      fontWeight: FontWeight.w500,
      height: 22,
      letterSpacing: 0.46),
  bodyText1: GoogleFonts.roboto(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: Colors.white,
  ),
  bodyText2: GoogleFonts.roboto(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: Colors.white,
  ),
//TODO: add all text styles
);

ThemeData theme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    color: Colors.white,
    elevation: 0,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 8),
      primary: ThemeColors.mint400, // background (button) color
      onPrimary: Colors.white, // foreground (text) color
      textStyle: textTheme.button,
    ),
  ),
);
