import 'package:car_app_new/core/common/widgets/adabtive_text_form_field.dart';
import 'package:flutter/material.dart';

class CustomTextFormFullName extends StatelessWidget {
  const CustomTextFormFullName({
    super.key,
    required this.controller,
    this.validate,
  });

  final TextEditingController controller;
  final String? Function(String?)? validate;

  @override
  Widget build(BuildContext context) {
    return AdaptiveInputField(
      context: context,
      controller: controller,   
      hintText: 'Full Name',
      validate: validate, 
    );
  }
}
