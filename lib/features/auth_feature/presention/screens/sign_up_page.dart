import 'package:car_app_new/core/app/theme/my_colors.dart';
import 'package:car_app_new/features/auth_feature/presention/refcator/sign_up_page_body.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.secondary,
            resizeToAvoidBottomInset: true,

      body: const SignUpPageBody(),
    );
  }
}
