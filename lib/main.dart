import 'package:car_app_new/car_app.dart';
import 'package:car_app_new/core/app/bloc_observer.dart';
import 'package:car_app_new/core/app/connectivitiy_controller.dart';
import 'package:car_app_new/core/app/env_varible.dart';
import 'package:car_app_new/core/di/di.dart';
import 'package:car_app_new/core/services/shared_pref/shared_pref.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await EnvVariable.instance.init(EnvType.dev);
  await ConnectivityController.instance.init();

  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  await SharedPref().initPreferences();
  await setupDI();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(DevicePreview(builder: (context) => const CarApp()));
}
