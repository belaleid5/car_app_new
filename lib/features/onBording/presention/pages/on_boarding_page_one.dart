import 'package:car_app_new/core/common/widgets/custom_logo_app_svg.dart';
import 'package:car_app_new/core/extensions/animation_extensions.dart';
import 'package:car_app_new/core/helper/spacing.dart';
import 'package:car_app_new/core/styles/app_images.dart';
import 'package:car_app_new/features/onBording/presention/widgets/custom_background_image_on_boarding.dart';
import 'package:car_app_new/features/onBording/presention/widgets/custom_opacity-background_image_on_boarding.dart';
import 'package:car_app_new/features/onBording/presention/widgets/custom_title_onBoarding_page.dart';
import 'package:flutter/material.dart';

class OnBoardingPageOne extends StatelessWidget {
  const OnBoardingPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CustomBackGroundImageOnBoarding(
          imagePath: AppImages.onBoardingScreenOne,
        ),
        const CustomOpacityColorBackGroundImageObBoarding(),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(40),
                const SizedBox(
                  width: 56,
                  height: 56,
                  child: CustomLogoAppSvg(),
                ).animateScaleNFadeHorizontal(
                  duration: const Duration(milliseconds: 800),
                ),
                const SizedBox(height: 32),
                const CustomTitleOnBoardingPage(),
                // Space for fixed bottom section
                const SizedBox(height: 150),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
