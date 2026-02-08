import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class CustomTextResetPassword extends StatelessWidget {
  const CustomTextResetPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Reset your password',
      style: context.textStyle.copyWith(
        fontSize: 30,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
