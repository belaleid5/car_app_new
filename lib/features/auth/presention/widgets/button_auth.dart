import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/styles/fonts/font_weight_helper.dart';
import 'package:car_app_new/core/styles/theme/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonAuth extends StatelessWidget {
  const ButtonAuth({
    required this.titleButton,
    super.key,
    this.onPressed, required this.backgroundColor,
  });
  final VoidCallback? onPressed;
  final String titleButton;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: Size(400.w, 62.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
      ),
      child: Text(
        titleButton,
        style: context.textStyle.copyWith(
          color: context.colors.white,
          fontSize: 16.sp,
          fontWeight: FontWeightHelper.semiBold,
        ),
      ),
    );
  }
}
