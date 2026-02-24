import 'package:flutter/material.dart';

class CustomDescriptionPageOnBoarding extends StatelessWidget {
  const CustomDescriptionPageOnBoarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Discover your next adventure with Qent, we're here to "
      'provide you with a seamless car rental experience. '
      "Let's get started on your journey.",
      style: TextStyle(
        color: Colors.white.withOpacity(0.8),
        fontSize: 14,
        height: 1.5,
      ),
    );
  }
}
