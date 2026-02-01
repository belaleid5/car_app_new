import 'package:car_app_new/core/styles/theme/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFilterSearchIcon extends StatelessWidget {
  const CustomFilterSearchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 50.w,
      decoration: BoxDecoration(
        color: MyColors.light.white,
        borderRadius: BorderRadius.circular(10.67.r),
        border: Border.all(
          color: MyColors.light.stroke,
        ),
      ),
      child: IconButton(
        onPressed: () {
          print('Filter button pressed');
        },
        icon: Icon(
          Icons.tune,
          color: MyColors.light.textSecondary,
          size: 24.sp,
        ),
      ),
    );
  }
}
