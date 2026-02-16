import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class CustomTextOr extends StatelessWidget {
  const CustomTextOr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Text(
        'Or',
        style: TextStyle(
          color: context.color.primary,
          fontSize: 22,
        ),
      ),
    );
  }
}
