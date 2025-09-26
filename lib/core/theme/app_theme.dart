import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CAppTheme {
  CAppTheme._(); // private constructor

  // Brand Colors
  static const Color brandOrange = Color(0xFFFB9824);
  static const Color brandBlack = Color(0xFF2B2B2B);

  // Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: brandOrange,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(
      primary: brandOrange,
      secondary: brandBlack,
      background: Colors.white,
      surface: Colors.white,
    ),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.archivoBlack(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: brandBlack,
      ),
      headlineMedium: GoogleFonts.audiowide(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: brandBlack,
      ),
      bodyLarge: GoogleFonts.inter(
        fontSize: 16,
        color: brandBlack,
      ),
      bodyMedium: GoogleFonts.inter(
        fontSize: 14,
        color: Colors.black87,
      ),
      labelLarge: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: brandBlack,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: brandBlack, width: 2),
      ),
    ),
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: brandOrange,
    scaffoldBackgroundColor: brandBlack,
    colorScheme: ColorScheme.dark(
      primary: brandOrange,
      secondary: Colors.white,
      background: brandBlack,
      surface: brandBlack,
    ),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.archivoBlack(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      headlineMedium: GoogleFonts.audiowide(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      bodyLarge: GoogleFonts.inter(
        fontSize: 16,
        color: Colors.white,
      ),
      bodyMedium: GoogleFonts.inter(
        fontSize: 14,
        color: Colors.white70,
      ),
      labelLarge: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: brandBlack,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: brandOrange,
        foregroundColor: brandBlack,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: brandOrange, width: 2),
      ),
    ),
  );
}
