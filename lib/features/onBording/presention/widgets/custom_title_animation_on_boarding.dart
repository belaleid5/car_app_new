import 'package:car_app_new/core/extensions/animation_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTitleAnimationOnBoarding extends StatelessWidget {
  const CustomTitleAnimationOnBoarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Lets Start',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32.sp,
            fontWeight: FontWeight.bold,
            height: 1.2,
          ),
        ).animateRightLeft(
          duration: const Duration(milliseconds: 500),
          isFromStart: true,
        ),
        
        SizedBox(height: 4.h),
        
        Text(
          'A New Experience',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32.sp,
            fontWeight: FontWeight.bold,
            height: 1.2,
          ),
        ).animateRightLeft(
          duration: const Duration(milliseconds: 600),
          isFromStart: true,
        ),
        
        Text(
          'With Car rental.',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32.sp,
            fontWeight: FontWeight.bold,
            height: 1.2,
          ),
        ).animateRightLeft(
          duration: const Duration(milliseconds: 700),
          isFromStart: true,
        ),
      ],
    );
  }
}
