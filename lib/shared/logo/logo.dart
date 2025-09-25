import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final double size; // control text size

  const Logo({super.key, this.size = 30});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            "CHAL",
            style: TextStyle(
              fontSize: size,
              fontWeight: FontWeight.bold,
              color: const Color(0xFFF89824), // orange text
              letterSpacing: 1,
            ),
          ),
        ),
        const SizedBox(width: 4),
        Text(
          "OSTAAD",
          style: TextStyle(
            fontSize: size,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 1,
          ),
        ),
      ],
    );
  }
}