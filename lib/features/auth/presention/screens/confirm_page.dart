import 'package:car_app_new/core/app/theme/my_colors.dart';
import 'package:car_app_new/features/auth/presention/refcator/confirm_page_body.dart';
import 'package:flutter/material.dart';

class ConfirmPage extends StatelessWidget {
  const ConfirmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      resizeToAvoidBottomInset: true,

      body: const ConfirmPageBody(),
    );
  }
}
