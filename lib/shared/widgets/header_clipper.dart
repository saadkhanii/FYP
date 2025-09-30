// lib/shared/widgets/header_clipper.dart
import 'package:flutter/material.dart';

class HeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    // Start at top-left corner
    path.lineTo(0, 0);

    // Go down left edge to bottom-left corner (longer left side)
    path.lineTo(0, size.height);

    // Create the S-curve from bottom-left to top-right
    // This creates the smooth wave-like shape
    path.cubicTo(
        size.width * 0.55,  // Control point 1 X - pulls curve outward
        size.height * 1.0, // Control point 1 Y - dips slightly below bottom
        size.width * 0.55,  // Control point 2 X - prepares for upward curve
        size.height * 0.4, // Control point 2 Y - pulls upward
        size.width,        // End point X (right edge)
        size.height * 0.45  // End point Y (meets right edge about 30% down from top)
    );

    // Complete the path by going to top-right corner
    path.lineTo(size.width, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}