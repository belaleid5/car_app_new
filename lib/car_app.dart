import 'package:car_app_new/core/app/connectivitiy_controller.dart';
import 'package:car_app_new/core/app/env_varible.dart';
import 'package:car_app_new/core/common/screens/no_network.dart';
import 'package:car_app_new/core/routes/app_routes.dart';
import 'package:car_app_new/core/routes/routes_names.dart';
import 'package:car_app_new/core/styles/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CarApp extends StatelessWidget {
  const CarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, _) {
        if (value) {
          return MaterialApp(
            debugShowCheckedModeBanner: EnvVariable.instance.isDebugMode,
            onGenerateRoute: AppRouter.onGenerateRoute,
            initialRoute: AppRoutesNames.splashRoute,

            // ✔️ Light Theme
            theme: themeLight(),

            darkTheme: themeDark(),

            themeMode: ThemeMode.system,
          );
        } else {
          return MaterialApp(
            debugShowCheckedModeBanner: EnvVariable.instance.isDebugMode,
            title: 'No Network',
            home: const NoNetwork(),
          );
        }
      },
    );
  }
}
