import 'package:complete_flutter_project/core/routing/routes.dart';
import 'package:complete_flutter_project/feature/login/ui/login_screen.dart';
import 'package:complete_flutter_project/feature/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //  this arguments to be passed in any screen  like this (arguments & className)
    final argument = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
            builder: (context) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                  body: Center(
                    child: Text("N routes defined for ${settings.name}"),
                  ),
                ));
    }
  }
}
