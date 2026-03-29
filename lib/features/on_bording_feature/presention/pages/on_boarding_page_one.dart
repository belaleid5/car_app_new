import 'package:car_app_new/core/common/animations/animation_do.dart';
import 'package:car_app_new/core/common/widgets/custom_logo_app_svg.dart';
import 'package:car_app_new/core/helper/spacing.dart';
import 'package:car_app_new/core/styles/app_images.dart';
import 'package:car_app_new/features/on_bording_feature/presention/widgets/custom_background_image_on_boarding.dart';
import 'package:car_app_new/features/on_bording_feature/presention/widgets/custom_opacity-background_image_on_boarding.dart';
import 'package:car_app_new/features/on_bording_feature/presention/widgets/custom_title_onBoarding_page.dart';
import 'package:flutter/material.dart';

class OnBoardingPageOne extends StatelessWidget {
  const OnBoardingPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CustomFadeInLeft(
          duration: 1000,
          child: CustomBackGroundImageOnBoarding(
            imagePath: AppImages.onBoardingScreenOne,
          ),
        ),
        const CustomOpacityColorBackGroundImageObBoarding(),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(40),

                const CustomFadeInDown(
                  duration: 700,
                  child: SizedBox(
                    width: 56,
                    height: 56,
                    child: CustomLogoAppSvg(),
                  ),
                ),

                const SizedBox(height: 32),

                const CustomFadeInRight(
                  duration: 900,
                  child: CustomTitleOnBoardingPage(),
                ),

                const SizedBox(height: 150),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
