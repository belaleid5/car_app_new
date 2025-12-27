import 'package:car_app_new/core/styles/theme/my_colors.dart';
import 'package:car_app_new/features/auth/presention/refcator/login_page_body.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,

      backgroundColor: context.colors.primary,
      body: const LoginPageBody(),
    );
  }
}
