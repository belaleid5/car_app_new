import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class CustomTextForgotPasswordSection extends StatelessWidget {
  const CustomTextForgotPasswordSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Forgot your password',
      style: context.textStyle.copyWith(
        fontSize: 30,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
