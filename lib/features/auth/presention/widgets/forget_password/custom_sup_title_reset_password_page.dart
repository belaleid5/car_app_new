import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class CustomSubTitleResetPasswordPage extends StatelessWidget {
  const CustomSubTitleResetPasswordPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      "Enter the email address associated with your account and\nwe'll send you a link to reset your password.",
      style: context.textStyle.copyWith(
        fontSize: 12,
        color: context.color.icon.withOpacity(0.7),
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
