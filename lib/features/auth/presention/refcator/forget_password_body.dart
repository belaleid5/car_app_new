import 'package:car_app_new/core/extensions/animation_extensions.dart';
import 'package:car_app_new/core/extensions/app_validators.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/helper/spacing.dart';
import 'package:car_app_new/core/language/lang_keys.dart';
import 'package:car_app_new/features/auth/presention/widgets/forget_password/custom_bloc_listener_forgot_password.dart';
import 'package:car_app_new/features/auth/presention/widgets/forget_password/custom_button_return_login_screen.dart';
import 'package:car_app_new/features/auth/presention/widgets/forget_password/custom_frgot_password_section.dart';
import 'package:car_app_new/features/auth/presention/widgets/forget_password/custom_sup_title_reset_password_page.dart';
import 'package:car_app_new/features/auth/presention/widgets/login/custom_text_form_email.dart';
import 'package:flutter/material.dart';

class ForgetPasswordBody extends StatefulWidget {
  const ForgetPasswordBody({super.key});

  @override
  State<ForgetPasswordBody> createState() => _ForgetPasswordBodyState();
}

GlobalKey<FormState> formKey = GlobalKey<FormState>();
TextEditingController emailController = TextEditingController();

class _ForgetPasswordBodyState extends State<ForgetPasswordBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Form(
        key: formKey,
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            verticalSpace(40 * 2),

            const CustomTextForgotPasswordSection(),
            const CustomSubTitleResetPasswordPage(),

            CustomTextFormEmail(
              controller: emailController,
              hintText: context.translate(LangKeys.email),
              validate: AppValidators.validateEmail,
            ).animateRightLeft(
              duration: const Duration(milliseconds: 1450),
            ),

            CustomBlocListenerForgotPassword(
              formKey: formKey,
              emailController: emailController,
            ),

            const CustomButtonReturnLoginScreen().animateRightLeft(
              duration: const Duration(milliseconds: 1650),
            ),
          ],
        ),
      ),
    );
  }
}
