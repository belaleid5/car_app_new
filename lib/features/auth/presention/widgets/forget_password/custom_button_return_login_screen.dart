import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/routes/routes_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonReturnLoginScreen extends StatelessWidget {
  const CustomButtonReturnLoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamedAndRemoveUntil(AppRoutesNames.loginRoute);
      },
      child: Text(
        'Back to Login',
        style: context.textStyle.copyWith(
          fontSize: 14.sp,
          color: context.color.textPrimary,
        ),
      ),
    );
  }
}
