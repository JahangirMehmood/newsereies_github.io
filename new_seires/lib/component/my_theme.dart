import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static Color btnclr = Colors.purple;
  static Color loginpageclr = const Color(0xffccccff);
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        canvasColor: Colors.white,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.white,
        colorScheme: ColorScheme(
          onSecondary: Colors.black,
          error: Colors.red,
          surface: Colors.cyan.shade50,
          primary: Colors.black,
          onPrimary: Colors.white,
          secondary: Colors.black87,
          background: Colors.cyan.shade100,
          brightness: Brightness.light,
          onSurface: Colors.black,
          onError: Colors.red,
          onBackground: Colors.black,
        ),
      );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
      canvasColor: Colors.black,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      colorScheme: ColorScheme(
        onSecondary: Colors.black,
        error: Colors.red,
        surface: Colors.cyan.shade50,
        primary: Colors.white,
        onPrimary: Colors.white,
        secondary: Colors.white,
        background: Colors.cyan.shade100,
        brightness: Brightness.dark,
        onSurface: Colors.black,
        onError: Colors.red,
        onBackground: Colors.black,
      ));
}
