import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/features/auth_feature/presention/refcator/reset_password_body.dart';
import 'package:flutter/material.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.background,
      body: const ResetPasswordBody(),
    );
  }
}
