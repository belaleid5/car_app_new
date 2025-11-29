import 'package:car_app_new/core/app/connectivitiy_controller.dart';
import 'package:car_app_new/core/app/env_varible.dart';
import 'package:car_app_new/core/common/screens/no_network.dart';
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
            builder: (_, child) {
              return Scaffold(
                appBar: AppBar(
                  title: const Text('Car App'),
                ),
                body: Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Connected to Internet'),
                  ),
                ),
              );
            
            },
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
