import 'package:chal_ostaad/shared/logo/logo.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF89824), // orange background
      body: Center(
        child: Logo(size: 40), // you can change size here
      ),
    );
  }
}