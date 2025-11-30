import 'package:car_app_new/car_app.dart';
import 'package:car_app_new/core/app/connectivitiy_controller.dart';
import 'package:car_app_new/core/app/env_varible.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async{
  await EnvVariable.instance.init(EnvType.dev);
    await ConnectivityController.instance.init();

  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const CarApp());
}


