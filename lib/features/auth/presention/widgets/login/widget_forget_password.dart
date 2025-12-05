import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WidgetForgetPassword extends StatelessWidget {
  const WidgetForgetPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'forget Password',
      style: context.textStyle.copyWith(
        fontSize: 14.sp,
      ),
    );
  }
}
