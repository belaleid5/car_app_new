import 'package:car_app_new/core/common/widgets/custom_logo_app_svg.dart';
import 'package:car_app_new/core/extensions/animation_extensions.dart';
import 'package:car_app_new/core/styles/app_images.dart';
import 'package:car_app_new/features/on_bording_feature/presention/widgets/custom_background_image_on_boarding.dart';
import 'package:car_app_new/features/on_bording_feature/presention/widgets/custom_des_on_boarding.dart';
import 'package:car_app_new/features/on_bording_feature/presention/widgets/custom_opacity-background_image_on_boarding.dart';
import 'package:car_app_new/features/on_bording_feature/presention/widgets/custom_title_animation_on_boarding.dart';
import 'package:flutter/material.dart';

class OnBoardingPageTwo extends StatelessWidget {
  const OnBoardingPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CustomBackGroundImageOnBoarding(
          imagePath: AppImages.onBoardingScreenTow,
        ),
        const CustomOpacityColorBackGroundImageObBoarding(),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                const SizedBox(
                  width: 56,
                  height: 56,
                  child: CustomLogoAppSvg(),
                ).animateRotate(),
                const SizedBox(height: 40),
                const CustomTitleAnimationOnBoarding(),
                const Spacer(), 
                const CustomDescriptionPageOnBoarding()
                    .animateBottomToTop(
                  duration: const Duration(milliseconds: 800),
                ),
                const SizedBox(height: 180),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
