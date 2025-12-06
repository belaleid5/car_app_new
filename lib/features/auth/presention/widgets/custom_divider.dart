import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Divider(
        color: context.color.primary,
        thickness: 1,
      ),
    );
  }
}
