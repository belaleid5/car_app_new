import 'package:car_app_new/features/auth/presention/widgets/login/custom_form_password.dart';
import 'package:car_app_new/features/auth/presention/widgets/login/custom_text_form_email.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionLoginAuth extends StatelessWidget {
  const SectionLoginAuth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 10.h,
      children: [
        CustomTextFormEmail(controller: TextEditingController()),
        CustomTextFormPassword(controller: TextEditingController()),
      ],
    );
  }
}
