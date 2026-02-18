import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class CustomTextOr extends StatelessWidget {
  const CustomTextOr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        'OR',
        style: TextStyle(
          color: context.color.textPrimary,
          fontSize: 14,
        ),
      ),
    );
  }
}
