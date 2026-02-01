import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DontHaveOrHaveAnAccountText extends StatelessWidget {
  const DontHaveOrHaveAnAccountText({
    required this.firstTitle,
    required this.secondTitle,
    required this.onTap,
    super.key,
  });
  final String firstTitle;
  final String secondTitle;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: firstTitle,
        style: Theme.of(context).textTheme.bodyMedium,
        children: [
          TextSpan(
            text: secondTitle,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: context.color.textPrimary,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
