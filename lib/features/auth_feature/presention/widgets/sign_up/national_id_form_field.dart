import 'package:car_app_new/core/common/widgets/adabtive_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NationalIdFieldForm extends StatelessWidget {
  const NationalIdFieldForm({
    required this.controller,
    super.key,
    this.focusNode,
    this.onSubmit,
    this.onChange,
    this.errorText,
    this.enabled,
  });

  final TextEditingController controller;
  final FocusNode? focusNode;
  final dynamic Function(String)? onSubmit;
  final dynamic Function(String)? onChange;
  final String? errorText;
  final bool? enabled;

  String? _validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'الرقم القومي مطلوب';
    }
    if (value.length != 14) {
      return 'الرقم القومي يجب أن يكون 14 رقم';
    }
    if (!RegExp(r'^\d{14}$').hasMatch(value)) {
      return 'الرقم القومي يجب أن يحتوي على أرقام فقط';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveInputField(
      context: context,
      controller: controller,
      title: 'National ID',
      hintText: 'Enter National ID',
      keyboardType: TextInputType.number,
      maxLength: 14,
      counterText: '',
      focusNode: focusNode,
      onSubmit: onSubmit,
      onChange: onChange,
      errorText: errorText,
      enabled: enabled,
      textDirection: TextDirection.ltr,
      textCapitalization: TextCapitalization.none,
      validate: _validate,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(14),
      ],
      prefix: const Icon(Icons.badge_outlined),
    );
  }
}
