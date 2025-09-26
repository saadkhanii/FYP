import 'package:chal_ostaad/features/splash/role_selection.dart';
import 'package:chal_ostaad/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'app_routes.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case AppRoutes.role:
        return MaterialPageRoute(builder: (_) => const RoleSelection());
      // case AppRoutes.signup:
      //   return MaterialPageRoute(builder: (_) => const SignupPage());
      // case AppRoutes.home:
      //   return MaterialPageRoute(builder: (_) => const HomePage());
      // case AppRoutes.profile:
      //   return MaterialPageRoute(builder: (_) => const ProfilePage());
      // case AppRoutes.jobDetails:
      //   return MaterialPageRoute(builder: (_) => const JobDetailsPage());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text("No route found")),
          ),
        );
    }
  }
}
