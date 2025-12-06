import 'package:car_app_new/core/extensions/adabtive_text_form_field_extensions.dart';
import 'package:flutter/material.dart';

class CustomTextFormLocation extends StatelessWidget {
  const CustomTextFormLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AdaptiveInputField(
      context: context,
      controller: TextEditingController(),
      hintText: '  Location ',
      keyboardType: TextInputType.phone,
    );
  }
}
