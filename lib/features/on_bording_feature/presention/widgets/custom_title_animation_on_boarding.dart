import 'package:car_app_new/core/extensions/animation_extensions.dart';
import 'package:flutter/material.dart';

class CustomTitleAnimationOnBoarding extends StatelessWidget {
  const CustomTitleAnimationOnBoarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Lets Start',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
            height: 1.2,
          ),
        ).animateRightLeft(),

        const SizedBox(height: 8),

        const Text(
          'A New Experience',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
            height: 1.2,
          ),
        ).animateRightLeft(
          duration: const Duration(milliseconds: 600),
        ),

        const Text(
          'With Car rental.',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
            height: 1.2,
          ),
        ).animateRightLeft(
          duration: const Duration(milliseconds: 700),
        ),
      ],
    );
  }
}
