import 'package:car_app_new/core/common/widgets/custom_logo_app_svg.dart';
import 'package:car_app_new/core/extensions/animation_extensions.dart';
import 'package:car_app_new/core/styles/app_images.dart';
import 'package:car_app_new/features/onBording/presention/widgets/custom_background_image_on_boarding.dart';
import 'package:car_app_new/features/onBording/presention/widgets/custom_opacity-background_image_on_boarding.dart';
import 'package:car_app_new/features/onBording/presention/widgets/custom_title_onBoarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingPageOne extends StatelessWidget {
  const OnBoardingPageOne();

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
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40.h),
                SizedBox(
                  width: 56.w,
                  height: 56.h,
                  child: const CustomLogoAppSvg(),
                ).animateScaleNFadeHorizontal(
                  duration: const Duration(milliseconds: 800),
                ),
                SizedBox(height: 32.h),
                const CustomTitleOnBoardingPage(),
                // Space for fixed bottom section
                SizedBox(height: 150.h),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
