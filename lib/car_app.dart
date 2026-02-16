import 'package:car_app_new/core/app/app_cubit/app_cubit_cubit.dart';
import 'package:car_app_new/core/app/connectivitiy_controller.dart';
import 'package:car_app_new/core/app/env_varible.dart';
import 'package:car_app_new/core/common/screens/no_network.dart';
import 'package:car_app_new/core/di/di.dart';
import 'package:car_app_new/core/language/app_localizations_setup.dart';
import 'package:car_app_new/core/routes/app_routes.dart';
import 'package:car_app_new/core/routes/routes_names.dart';
import 'package:car_app_new/core/services/shared_pref/shared_keys.dart';
import 'package:car_app_new/core/services/shared_pref/shared_pref.dart';
import 'package:car_app_new/core/styles/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarApp extends StatelessWidget {
  const CarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (context, isConnected, _) {
        if (!isConnected) {
          return MaterialApp(
            debugShowCheckedModeBanner: EnvVariable.instance.isDebugMode,
            home: const NoNetwork(),
          );
        }

        return BlocProvider(
          create: (_) => sl<AppCubit>()
            ..changeAppThemeMode(
              sharedMode:
                  SharedPref().getBoolean(PrefKeys.themeMode) ?? false,
            ),
          child: GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: ScreenUtilInit(
              designSize: const Size(430, 932),
              minTextAdapt: true,
              splitScreenMode: true,
              child: BlocBuilder<AppCubit, AppState>(
                builder: (context, state) {
                  final cubit = context.read<AppCubit>();

                  return MaterialApp(
                    debugShowCheckedModeBanner:
                        EnvVariable.instance.isDebugMode,
                    onGenerateRoute: AppRouter.onGenerateRoute,
                    initialRoute: AppRoutesNames.homePage,
                    theme: cubit.isDark ? themeDark() : themeLight(),
                    supportedLocales:
                        AppLocalizationsSetup.supportedLocales,
                    localizationsDelegates:
                        AppLocalizationsSetup.localizationsDelegates,
                    locale: const Locale('en'),
                    localeResolutionCallback:
                        AppLocalizationsSetup.localeResolutionCallback,
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
