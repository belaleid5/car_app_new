import 'package:car_app_new/core/routes/routes_names.dart';
import 'package:car_app_new/features/splash/presention/pages/splash_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutesNames.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      default:
        return MaterialPageRoute(builder: (_) => const SplashPage());
    }
  }
}
