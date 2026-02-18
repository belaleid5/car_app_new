import 'package:car_app_new/core/extensions/animation_extensions.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/app/theme/my_colors.dart';
import 'package:flutter/material.dart';

class CustomTitleOnBoardingPage extends StatelessWidget {
  const CustomTitleOnBoardingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome to',
          style: context.textStyle.copyWith(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: MyColors.light.white,
          ),
        ).animateRightLeft(
          duration: const Duration(milliseconds: 600),
        ),

        const SizedBox(height: 8),

        Text(
              'Qent',
              style: context.textStyle.copyWith(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            )
            .animateRightLeft(
              duration: const Duration(milliseconds: 700),
            )
            .animateShimmer(
              duration: const Duration(milliseconds: 2000),
              colors: [
                MyColors.light.white.withOpacity(0.6),
                Colors.white,
                MyColors.light.white.withOpacity(0.6),
              ],
            ),
      ],
    );
  }
}
