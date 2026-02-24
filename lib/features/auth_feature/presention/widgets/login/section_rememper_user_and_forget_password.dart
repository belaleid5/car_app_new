import 'package:car_app_new/features/auth_feature/presention/widgets/login/check_box_and_remember.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/login/widget_forget_password.dart';
import 'package:flutter/material.dart';

class SectionRememberUserWithForgetPassword extends StatelessWidget {
  const SectionRememberUserWithForgetPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomCheckBoxAndRemember(),
        WidgetForgetPassword(),
      ],
    );
  }
}
