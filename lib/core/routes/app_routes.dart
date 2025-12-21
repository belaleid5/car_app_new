import 'package:car_app_new/core/di/di.dart';
import 'package:car_app_new/core/routes/routes_names.dart';
import 'package:car_app_new/features/auth/presention/manger/bloc_login/login_bloc.dart';
import 'package:car_app_new/features/auth/presention/screens/login_page.dart';
import 'package:car_app_new/features/auth/presention/screens/sign_up_page.dart';
import 'package:car_app_new/features/onBording/presention/pages/main_onBorading_page.dart';
import 'package:car_app_new/features/onBording/presention/pages/on_boarding_oage_tow.dart';
import 'package:car_app_new/features/onBording/presention/pages/on_boarding_page_one.dart';
import 'package:car_app_new/features/onBording/presention/pages/page_view_on_boarding.dart';
import 'package:car_app_new/features/settings/presention/screens/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutesNames.loginRoute:
        return MaterialPageRoute(
          builder: (_) =>  BlocProvider(
            create: (context) => sl<LoginBloc>(),
            child: const LoginPage(),
          ),
        );

      case AppRoutesNames.signUpRoute:
        return MaterialPageRoute(builder: (_) => const SignUpPage());

      case AppRoutesNames.mainBoarding: // ✅ أضف ده
        return MaterialPageRoute(builder: (_) => const MainOnboardingPage());

      case AppRoutesNames.pageViewBoarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingPageView());

      case AppRoutesNames.firstOnBoarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingPageOne());

      case AppRoutesNames.secondOnBoarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingPageTwo());
      case AppRoutesNames.settingsRoute:
        return MaterialPageRoute(builder: (_) => const SettingsPage());
      // ✅ أضف ده
      default:
        // ✅ غير الـ default لصفحة خطأ أو 404
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('Page not found: ${settings.name}'),
            ),
          ),
        );
    }
  }
}
