import 'package:flutter/material.dart';

class CustomTitleSplashScreen extends StatelessWidget {
  const CustomTitleSplashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Car Rental',
      style: TextStyle(
        color: Colors.white,
        fontSize: 48,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}