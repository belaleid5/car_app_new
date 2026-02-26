import 'package:flutter/material.dart';

class CustomSupTitleSplashScreen extends StatelessWidget {
  const CustomSupTitleSplashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Your Journey Starts Here',
      style: TextStyle(
        color: Colors.white.withOpacity(0.7),
        fontSize: 16,
      ),
    );
  }
}
