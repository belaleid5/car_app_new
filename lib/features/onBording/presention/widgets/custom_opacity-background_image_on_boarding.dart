import 'package:car_app_new/core/extensions/animation_extensions.dart';
import 'package:car_app_new/core/styles/theme/my_colors.dart';
import 'package:flutter/material.dart';

class CustomOpacityColorBackGroundImageObBoarding extends StatelessWidget {
  const CustomOpacityColorBackGroundImageObBoarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              // ignore: deprecated_member_use
              MyColors.light.black.withOpacity(0.4),
              MyColors.light.black.withOpacity(0.6),
            ],
          ),
        ),
      ).animateAfterDurationVisibility(
        duration: const Duration(milliseconds: 600),
      ),
    );
  }
}
