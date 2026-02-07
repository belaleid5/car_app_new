import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextOr extends StatelessWidget {
  const CustomTextOr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Text(
        'Or',
        style: TextStyle(
          color: context.color.primary,
          fontSize: 14.sp,
        ),
      ),
    );
  }
}
