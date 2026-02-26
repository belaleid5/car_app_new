import 'package:car_app_new/core/common/animations/custom_page_route.dart';
import 'package:car_app_new/core/di/di.dart';
import 'package:car_app_new/core/routes/routes_names.dart';
import 'package:car_app_new/features/auth_feature/presention/manger/bloc_confirm/bloc/confirm_code_bloc.dart';
import 'package:car_app_new/features/auth_feature/presention/manger/bloc_login/login_bloc.dart';
import 'package:car_app_new/features/auth_feature/presention/manger/bloc_register/register_bloc.dart';
import 'package:car_app_new/features/auth_feature/presention/manger/bloc_verify_code/verify_code_phone_auth_bloc.dart';
import 'package:car_app_new/features/auth_feature/presention/manger/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:car_app_new/features/auth_feature/presention/manger/reset_password/bloc/reset_password_bloc.dart';
import 'package:car_app_new/features/auth_feature/presention/screens/confirm_page.dart';
import 'package:car_app_new/features/auth_feature/presention/screens/forget_password.dart';
import 'package:car_app_new/features/auth_feature/presention/screens/login_page.dart';
import 'package:car_app_new/features/auth_feature/presention/screens/reset_password_page.dart';
import 'package:car_app_new/features/auth_feature/presention/screens/sign_up_page.dart';
import 'package:car_app_new/features/auth_feature/presention/screens/verifcation_page.dart';
import 'package:car_app_new/features/car_feature/details/data/repo/cars_details_repo.dart';
import 'package:car_app_new/features/car_feature/details/presention/manger/bloc/cars_details_bloc.dart';
import 'package:car_app_new/features/car_feature/details/presention/manger/bloc/cars_details_event.dart';
import 'package:car_app_new/features/car_feature/details/presention/screens/car_details_screen.dart';
import 'package:car_app_new/features/car_feature/home/presention/manger/best_cars_bloc/bestcars_bloc.dart';
import 'package:car_app_new/features/car_feature/home/presention/manger/best_cars_bloc/bestcars_event.dart';
import 'package:car_app_new/features/car_feature/home/presention/manger/bloc_brands/brands_bloc.dart';
import 'package:car_app_new/features/car_feature/home/presention/manger/bloc_brands/brands_event.dart';
import 'package:car_app_new/features/car_feature/home/presention/manger/nerest_cars_bloc/bloc/nerest_car_bloc.dart';
import 'package:car_app_new/features/car_feature/home/presention/manger/nerest_cars_bloc/bloc/nerest_car_event.dart';
import 'package:car_app_new/features/on_bording_feature/presention/pages/main_onBorading_page.dart';
import 'package:car_app_new/features/on_bording_feature/presention/pages/on_boarding_oage_tow.dart';
import 'package:car_app_new/features/on_bording_feature/presention/pages/on_boarding_page_one.dart';
import 'package:car_app_new/features/on_bording_feature/presention/pages/page_view_on_boarding.dart';
import 'package:car_app_new/features/user_feature/main_bottom_bar/presention/pages/main_bottom_bar_page.dart';
import 'package:car_app_new/features/user_feature/settings/presention/screens/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutesNames.loginRoute:
        return CustomPageRoute(
          settings: settings,
          page: BlocProvider(
            create: (_) => sl<LoginBloc>(),
            child: const LoginPage(),
          ),
        );

      case AppRoutesNames.signUpRoute:
        return CustomPageRoute(
          settings: settings,
          page: BlocProvider(
            create: (_) => sl<RegisterBloc>(),
            child: const SignUpPage(),
          ),
        );

      case AppRoutesNames.mainBoarding:
        return CustomPageRoute(
          settings: settings,
          page: const MainOnboardingPage(),
        );

      case AppRoutesNames.pageViewBoarding:
        return CustomPageRoute(
          settings: settings,
          page: const OnBoardingPageView(),
        );

      case AppRoutesNames.firstOnBoarding:
        return CustomPageRoute(
          settings: settings,
          page: const OnBoardingPageOne(),
        );

      case AppRoutesNames.secondOnBoarding:
        return CustomPageRoute(
          settings: settings,
          page: const OnBoardingPageTwo(),
        );

      case AppRoutesNames.bottomNavBarRoute:
        return CustomPageRoute(
          settings: settings,
          page: MultiBlocProvider(
            providers: [
              BlocProvider<BestCarsBloc>(
                create: (_) =>
                    sl<BestCarsBloc>()
                      ..add(const BestCarsEvent.fetchBestCars()),
              ),
              BlocProvider<BrandsBloc>(
                create: (_) =>
                    sl<BrandsBloc>()..add(const BrandsEvent.getBrands()),
              ),
              BlocProvider<NerestCarsBloc>(
                create: (_) =>
                    sl<NerestCarsBloc>()
                      ..add(const NerestCarsEvent.fetchNerestCars()),
              ),
            ],
            child: const MainBottomBarScreen(),
          ),
        );

      case AppRoutesNames.carsDetailsRoute:
        final carId = settings.arguments! as String;

        return CustomPageRoute(
          settings: settings,
          page: BlocProvider(
            create: (context) =>
                CarDetailsBloc(sl<CarsDetailsRepo>())
                  ..add(CarDetailsEvent.getCarDetails(carId: carId)),
            child: const CarsDetailsScreen(),
          ),
        );

      case AppRoutesNames.settingsRoute:
        return CustomPageRoute(
          settings: settings,
          page: const SettingsPage(),
        );

      case AppRoutesNames.ConfirmRoute:
        return CustomPageRoute(
          settings: settings,
          page: BlocProvider(
            create: (_) => sl<ConfirmCodeBloc>(),
            child: const ConfirmPage(),
          ),
        );

      case AppRoutesNames.resetPasswordRoute:
        return CustomPageRoute(
          settings: settings,
          page: BlocProvider(
            create: (_) => sl<ResetPasswordBloc>(),
            child: const ResetPasswordPage(),
          ),
        );

      case AppRoutesNames.forgetPasswordRoute:
        return CustomPageRoute(
          settings: settings,
          page: BlocProvider(
            create: (_) => sl<ForgotPasswordBloc>(),
            child: const ForgetPasswordPage(),
          ),
        );

      case AppRoutesNames.verificationRoute:
        return CustomPageRoute(
          settings: settings,
          page: BlocProvider(
            create: (_) => sl<VerifyCodePhoneAuthBloc>(),
            child: const VerificationPage(),
          ),
        );

      default:
        return CustomPageRoute(
          settings: settings,
          page: Scaffold(
            body: Center(
              child: Text('Page not found: ${settings.name}'),
            ),
          ),
        );
    }
  }
}
