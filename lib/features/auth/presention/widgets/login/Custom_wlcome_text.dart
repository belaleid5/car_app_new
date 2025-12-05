import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomWelcomeText extends StatelessWidget {
  const CustomWelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Welcome Back \nReady to hit the road.',
      style: context.textStyle.copyWith(
        fontSize: 30.sp,
      ),
    );
  }
}
