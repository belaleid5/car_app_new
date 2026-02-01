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
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, _) {
        if (value) {
          return GestureDetector(
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: ScreenUtilInit(
              designSize: const Size(430, 932),
              minTextAdapt: true,
              splitScreenMode: true,
              child: MaterialApp(
                debugShowCheckedModeBanner: EnvVariable.instance.isDebugMode,
                onGenerateRoute: AppRouter.onGenerateRoute,
                initialRoute: AppRoutesNames.loginRoute,
                theme: themeLight(),
                darkTheme: themeDark(),
                supportedLocales: AppLocalizationsSetup.supportedLocales,
                localizationsDelegates:
                    AppLocalizationsSetup.localizationsDelegates,
                locale: const Locale('en'),
                localeResolutionCallback:
                    AppLocalizationsSetup.localeResolutionCallback,
            
            ),
         
            ),
          );
        } else {
          return MaterialApp(
            debugShowCheckedModeBanner: EnvVariable.instance.isDebugMode,
            home: const NoNetwork(),
          );
        }
      },
    );
  }
}
