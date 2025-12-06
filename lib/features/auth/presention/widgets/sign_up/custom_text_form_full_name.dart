import 'package:car_app_new/core/extensions/adabtive_text_form_field_extensions.dart';
import 'package:flutter/material.dart';

class CustomTextFormFullName extends StatelessWidget {
  const CustomTextFormFullName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AdaptiveInputField(
      context: context,

      controller: TextEditingController(),
      hintText: '  Full Name ',
      keyboardType: TextInputType.phone,
    );
  }
}
