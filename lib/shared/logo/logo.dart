import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppLogo extends StatelessWidget {
  final double? fontSize;
  final double minWidth;
  final double maxWidth;

  const AppLogo({
    super.key,
    this.fontSize,
    this.minWidth = 150,
    this.maxWidth = 400,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final responsiveFontSize =
            fontSize ?? (constraints.maxWidth * 0.12).clamp(20, 60);

        return ConstrainedBox(
          constraints: BoxConstraints(minWidth: minWidth, maxWidth: maxWidth),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  color: Colors.black,
                  child: Text(
                    "CHAL",
                    style: GoogleFonts.archivoBlack(
                      fontSize: responsiveFontSize,
                      color: Colors.white,
                      height: 1.4,
                      shadows: [
                        Shadow(
                          offset: const Offset(2, 2),
                          blurRadius: 4,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 6),
                // OSTAAD
                Text(
                  "OSTAAD",
                  style: GoogleFonts.archivoBlack(
                    fontSize: responsiveFontSize,
                    color: Colors.white,
                    height: 1.4,
                    shadows: [
                      Shadow(
                        offset: const Offset(2, 2),
                        blurRadius: 4,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
