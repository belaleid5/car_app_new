import 'package:car_app_new/core/styles/theme/my_colors.dart';
import 'package:car_app_new/features/auth/presention/widgets/button_auth.dart';
import 'package:car_app_new/features/auth/presention/widgets/login/custom_form_password.dart';
import 'package:car_app_new/features/auth/presention/widgets/login/custom_text_form_email.dart';
import 'package:car_app_new/features/auth/presention/widgets/sign_up/custom_text_form_country.dart';
import 'package:car_app_new/features/auth/presention/widgets/sign_up/custom_text_form_full_name.dart';
import 'package:car_app_new/features/auth/presention/widgets/sign_up/custom_text_form_location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionAuthSignUP extends StatelessWidget {
  const SectionAuthSignUP({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      children: [
        const CustomTextFormFullName(),
        CustomTextFormEmail(controller: TextEditingController()),
        CustomTextFormPassword(controller: TextEditingController()),
        const CustomTextFormCountry(),
        const CustomTextFormLocation(),
        ButtonAuth(
          titleButton: 'Sign Up',
          backgroundColor: context.colors.black,
          onPressed: () {},
        ),
      ],
    );
  }
}
