import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/styles/theme/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpTextTitle extends StatelessWidget {
  const SignUpTextTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Sign Up',
      style: context.textStyle.copyWith(
        fontSize: 24.sp,
        fontWeight: FontWeight.w600,
        color: context.colors.black,
      ),
      textAlign: TextAlign.center,
    );
  }
}
