import 'package:car_app_new/core/common/widgets/custom_logo_app_svg.dart';
import 'package:car_app_new/core/extensions/animation_extensions.dart';
import 'package:car_app_new/core/styles/app_images.dart';
import 'package:car_app_new/features/onBording/presention/widgets/custom_background_image_on_boarding.dart';
import 'package:car_app_new/features/onBording/presention/widgets/custom_des_on_boarding.dart';
import 'package:car_app_new/features/onBording/presention/widgets/custom_opacity-background_image_on_boarding.dart';
import 'package:car_app_new/features/onBording/presention/widgets/custom_title_animation_on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40.h),
                SizedBox(
                  width: 56.w,
                  height: 56.h,
                  child: const CustomLogoAppSvg(),
                ).animateRotate(),
                SizedBox(height: 40.h),
                const CustomTitleAnimationOnBoarding(),
                const Spacer(),
                const CustomDescriptionPageOnBoarding().animateBottomToTop(
                  duration: const Duration(milliseconds: 800),
                ),
                // Space for fixed bottom section
                SizedBox(height: 180.h),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
