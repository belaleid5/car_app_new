import 'package:car_app_new/core/app/env_varible.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async{
  await EnvVariable.instance.init(EnvType.dev);
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
      
 
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: EnvVariable.instance.isDebugMode,
     home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
    
  }
}

