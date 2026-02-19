import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/app/theme/my_colors.dart';
import 'package:flutter/material.dart';


class SignUpTextTitle extends StatelessWidget {
  const SignUpTextTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Sign Up',
      style: context.textStyle.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: context.colors.black,
      ),
      textAlign: TextAlign.center,
    );
  }
}
