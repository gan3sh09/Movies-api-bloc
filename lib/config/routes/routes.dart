import 'package:flutter/material.dart';
import 'package:freezed_practise/config/routes/routes_name.dart';
import 'package:freezed_practise/views/view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());

      case RoutesName.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());

      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());

      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(
              child: Text('No routes found'),
            ),
          );
        });
    }
  }
}
