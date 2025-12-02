import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/language/lang_keys.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text(

          context.translate(LangKeys.appName),
        ),
      ),
    );
  }
}
