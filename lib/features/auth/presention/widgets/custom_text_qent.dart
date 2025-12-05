import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextQent extends StatelessWidget {
  const CustomTextQent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Qent',
      style: context.textStyle.copyWith(
        fontSize: 30.sp,
      ),
    );
  }
}
