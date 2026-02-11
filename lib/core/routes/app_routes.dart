import 'package:car_app_new/core/di/di.dart';
import 'package:car_app_new/core/routes/routes_names.dart';
import 'package:car_app_new/features/auth/presention/manger/bloc_confirm/bloc/confirm_code_bloc.dart';
import 'package:car_app_new/features/auth/presention/manger/bloc_login/login_bloc.dart';
import 'package:car_app_new/features/auth/presention/manger/bloc_register/register_bloc.dart';
import 'package:car_app_new/features/auth/presention/manger/bloc_verify_code/verify_code_phone_auth_bloc.dart';
import 'package:car_app_new/features/auth/presention/manger/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:car_app_new/features/auth/presention/manger/reset_password/bloc/reset_password_bloc.dart';
import 'package:car_app_new/features/auth/presention/screens/confirm_page.dart';
import 'package:car_app_new/features/auth/presention/screens/forget_password.dart';
import 'package:car_app_new/features/auth/presention/screens/login_page.dart';
import 'package:car_app_new/features/auth/presention/screens/reset_password_page.dart';
import 'package:car_app_new/features/auth/presention/screens/sign_up_page.dart';
import 'package:car_app_new/features/auth/presention/screens/verifcation_page.dart';
import 'package:car_app_new/features/onBording/presention/pages/main_onBorading_page.dart';
import 'package:car_app_new/features/onBording/presention/pages/on_boarding_oage_tow.dart';
import 'package:car_app_new/features/onBording/presention/pages/on_boarding_page_one.dart';
import 'package:car_app_new/features/onBording/presention/pages/page_view_on_boarding.dart';
import 'package:car_app_new/features/settings/presention/screens/settings_page.dart';
import 'package:car_app_new/features/user/home/presention/manger/bloc/bestcars_bloc.dart';
import 'package:car_app_new/features/user/home/presention/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutesNames.loginRoute:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<LoginBloc>(),
            child: const LoginPage(),
          ),
        );

      case AppRoutesNames.signUpRoute:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<RegisterBloc>(),
            child: const SignUpPage(),
          ),
        );

      case AppRoutesNames.mainBoarding:
        return MaterialPageRoute(builder: (_) => const MainOnboardingPage());

      case AppRoutesNames.pageViewBoarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingPageView());

      case AppRoutesNames.firstOnBoarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingPageOne());

      case AppRoutesNames.secondOnBoarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingPageTwo());

      case AppRoutesNames.homePage:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider<GetBestCarsBloc>(
                create: (context) => sl<GetBestCarsBloc>(),
              ),
            ],
            child: const HomePage(),
          ),
        );

      case AppRoutesNames.settingsRoute:
        return MaterialPageRoute(builder: (_) => const SettingsPage());

      case AppRoutesNames.ConfirmRoute:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<ConfirmCodeBloc>(),
            child: const ConfirmPage(),
          ),
        );

      case AppRoutesNames.resetPasswordRoute:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) {
            final resetToken = settings.arguments as String?;
            print('🛣️ AppRouter - Reset Token: $resetToken');

            return BlocProvider(
              create: (context) => sl<ResetPasswordBloc>(),
              child: const ResetPasswordPage(),
            );
          },
        );

      case AppRoutesNames.forgetPasswordRoute:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<ForgotPasswordBloc>(),
            child: const ForgetPasswordPage(),
          ),
        );

      case AppRoutesNames.verificationRoute:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<VerifyCodePhoneAuthBloc>(),
            child: const VerificationPage(),
          ),
        );

      default:
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
