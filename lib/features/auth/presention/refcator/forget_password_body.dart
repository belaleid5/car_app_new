import 'package:car_app_new/core/extensions/animation_extensions.dart';
import 'package:car_app_new/core/extensions/app_validators.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/helper/spacing.dart';
import 'package:car_app_new/core/language/lang_keys.dart';
import 'package:car_app_new/core/routes/routes_names.dart';
import 'package:car_app_new/features/auth/presention/widgets/button_auth.dart'
    show ButtonAuth;
import 'package:car_app_new/features/auth/presention/widgets/forget_password/custom_reset_password.dart';
import 'package:car_app_new/features/auth/presention/widgets/forget_password/custom_sup_title_reset_password_page.dart';
import 'package:car_app_new/features/auth/presention/widgets/login/custom_text_form_email.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.sp),
      child: Column(
        spacing: 20.h,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          verticalSpace(40.h * 2),

          const CustomTextResetPassword(),
          const CustomSubTitleResetPasswordPage(),

          CustomTextFormEmail(
            controller: TextEditingController(),
            hintText: context.translate(LangKeys.email),
            validate: AppValidators.validateEmail,
          ).animateRightLeft(
            duration: const Duration(milliseconds: 1450),
          ),

          ButtonAuth(
            widgetTitle: Text(
              'Continue',
              style: context.textStyle.copyWith(
                color: context.color.background,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {},
          ).animateRightLeft(
            duration: const Duration(milliseconds: 1550),
          ),

          TextButton(
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
          ).animateRightLeft(
            duration: const Duration(milliseconds: 1650),
          ),
        ],
      ),
    );
  }
}
