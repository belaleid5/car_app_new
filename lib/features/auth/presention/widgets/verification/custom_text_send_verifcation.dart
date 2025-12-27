import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSendTextVerification extends StatelessWidget {
  const CustomSendTextVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'We have send a Code to : +100******00',
        style: context.textStyle.copyWith(
          fontSize: 14.sp,
          color: context.color.textSecondary,
        ),
      ),
    );
  }
}
