import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCheckBoxAndRemember extends StatelessWidget {
  const CustomCheckBoxAndRemember({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: 1.4,
          child: Checkbox(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.r),
            ),
            side: BorderSide(
              color: context.color.primary,
              width: 2.w,
            ),
            splashRadius: 25.r,
            value: true,
            onChanged: (v) {},
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
        Text(
          'Remember Me',
          style: context.textStyle.copyWith(
            fontSize: 14.sp,
          ),
        ),
      ],
    );
  }
}
