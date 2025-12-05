import 'package:car_app_new/core/extensions/adabtive_text_form_field_extensions.dart';
import 'package:flutter/material.dart';

class CustomTextFormEmail extends StatelessWidget {
  

  const CustomTextFormEmail({
    super.key,
    required this.controller,
    this.title,
    this.hintText,
    this.validate,
    this.heightAfterIt = 0,
    this.autofocus = false,
    this.focusNode,
  });
  final TextEditingController controller;
  final String? title;
  final String? hintText;
  final String? Function(String?)? validate;
  final double heightAfterIt;
  final bool autofocus;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return AdaptiveInputField(
      context: context,
      controller: controller,
      title: title,
      hintText: hintText ?? 'Email/Phone Number',
      validate: validate,
      keyboardType: TextInputType.emailAddress,
      textCapitalization: TextCapitalization.none, 
      heightAfterIt: heightAfterIt,
      autofocus: autofocus,
      focusNode: focusNode,
    
    );
  }
}
