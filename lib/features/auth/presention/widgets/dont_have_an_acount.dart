import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DontHaveAnAccountText extends StatelessWidget {
  const DontHaveAnAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "Don't have an account? ",
        style: Theme.of(context).textTheme.bodyMedium,
        children: [
          TextSpan(
            text: 'Sign Up',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: context.color.primary,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // Handle sign up navigation
                
              },
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
