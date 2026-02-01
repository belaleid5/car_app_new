import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/styles/theme/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class LoadingLocationWidget extends StatelessWidget {
  const LoadingLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
      border: Border.all(color: context.colors.stroke),
      borderRadius: BorderRadius.circular(12.r),
      color: context.colors.background,
    ),
      child: Row(
        children: [
          SizedBox(
            width: 20.w,
            height: 20.w,
            child: CircularProgressIndicator(
              strokeWidth: 2.5,
              valueColor: AlwaysStoppedAnimation(context.colors.primary),
            ),
          ),
          SizedBox(width: 12.w),
          Text(
            'Loading...',
            style:TextStyle(
      color: context.color.textSecondary,
      fontSize: 14.sp,
    ),
          ),
        ],
      ),
    );
  }
}
