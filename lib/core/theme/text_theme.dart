import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import '../constants/sizes.dart';

class CTextTheme {
  // Light theme text styles
  static TextTheme lightTheme = TextTheme(
    displayLarge: GoogleFonts.archivoBlack(
      fontSize: CSizes.fontSizeXXLg,
      fontWeight: FontWeight.bold,
      color: CColors.textPrimary,
    ),
    displayMedium: GoogleFonts.audiowide(
      fontSize: CSizes.fontSizeXLg,
      fontWeight: FontWeight.w600,
      color: CColors.textPrimary,
    ),
    bodyLarge: GoogleFonts.inter(
      fontSize: CSizes.fontSizeMd,
      fontWeight: FontWeight.normal,
      color: CColors.textPrimary,
    ),
  );

  // Dark theme text styles
  static TextTheme darkTheme = TextTheme(
    displayLarge: GoogleFonts.archivoBlack(
      fontSize: CSizes.fontSizeXXLg,
      fontWeight: FontWeight.bold,
      color: CColors.white,
    ),
    displayMedium: GoogleFonts.audiowide(
      fontSize: CSizes.fontSizeXLg,
      fontWeight: FontWeight.w600,
      color: CColors.white,
    ),
    bodyLarge: GoogleFonts.inter(
      fontSize: CSizes.fontSizeMd,
      fontWeight: FontWeight.normal,
      color: CColors.white,
    ),
  );
}
