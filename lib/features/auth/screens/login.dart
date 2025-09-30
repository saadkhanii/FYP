// lib/features/auth/screens/login.dart
import 'package:flutter/material.dart';
import 'package:chal_ostaad/core/constants/colors.dart'; // Path to your colors
import 'package:chal_ostaad/shared/logo/logo.dart'; // Path to your AppLogo

import '../../../core/constants/sizes.dart';
import '../../../shared/widgets/Cbutton.dart';
import '../../../shared/widgets/Ccontainer.dart'; // Path to your CustomShapeContainer
// If CContainer.dart is indeed named Ccontainer.dart, then:
// import 'package:chal_ostaad/shared/widgets/Ccontainer.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // Get screen width for the container
    final screenWidth = MediaQuery.of(context)
        .size
        .width; // Not strictly needed if CustomShapeContainer handles width internally

    return Scaffold(
      backgroundColor:
          CColors.light, // Or whatever your desired page background is
      body: SingleChildScrollView(
        // Added SingleChildScrollView for longer content if any
        child: Column(
          children: [

            CustomShapeContainer(
              height: 250,
              width:
                  screenWidth, // CustomShapeContainer defaults to double.infinity width
              color: CColors.primary, // Using primary color from your constants
              padding: const EdgeInsets.only(
                top: 50, // Adjust top padding for AppLogo placement
                left: 45,
                right: 45,
                bottom:
                    30, // Adjust bottom padding for "Login" text or other elements
              ),
            ),
            SizedBox(height: 20,),
            Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Example: Placeholder for your login form fields
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Email'),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Password'),
                    obscureText: true,
                  ),
                  const SizedBox(height: 30),
                  CButton(
                    text: "Login",
                    onPressed: () {
                      // Navigate to home or perform login
                    },
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      // Navigate to signup or forgot password
                    },
                    child: Text("Don't have an account? Sign Up"),
                  ),
                ],
              ),

            // --- End of Login Form ---
          ],
        ),
      ),
    );
  }
}
