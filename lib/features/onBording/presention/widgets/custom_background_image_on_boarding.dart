import 'package:car_app_new/core/extensions/animation_extensions.dart';
import 'package:flutter/material.dart';

class CustomBackGroundImageOnBoarding extends StatelessWidget {
  const CustomBackGroundImageOnBoarding({
    super.key, required this.imagePath,
  });
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image.asset(
        imagePath,
         fit: BoxFit.cover,
      ).animateBlur(
        duration: const Duration(milliseconds: 800),
      ),
    );
  }
}
