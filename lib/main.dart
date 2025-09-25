import 'package:chal_ostaad/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ChalOstaadApp());
}

class ChalOstaadApp extends StatelessWidget {
  const ChalOstaadApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
