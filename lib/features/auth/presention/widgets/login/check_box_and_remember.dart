import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/features/auth/presention/widgets/login/check_box.dart';
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
       const CustomCheckBox(),
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
