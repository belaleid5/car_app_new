import 'package:car_app_new/core/common/animations/animation_do.dart';
import 'package:car_app_new/core/extensions/app_validators.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/helper/spacing.dart';
import 'package:car_app_new/core/language/lang_keys.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/forget_password/custom_bloc_listener_forgot_password.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/forget_password/custom_button_return_login_screen.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/forget_password/custom_frgot_password_section.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/forget_password/custom_sup_title_reset_password_page.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/login/custom_text_form_email.dart';
import 'package:flutter/material.dart';

GlobalKey<FormState> formKey = GlobalKey<FormState>();
TextEditingController emailController = TextEditingController();

class ForgetPasswordBody extends StatefulWidget {
  const ForgetPasswordBody({super.key});

  @override
  State<ForgetPasswordBody> createState() => _ForgetPasswordBodyState();
}

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

            // ✅ العنوان يهبط من فوق
            const CustomFadeInDown(
              duration: 500,
              child: CustomTextForgotPasswordSection(),
            ),

            // ✅ السب تايتل يجي من الشمال
            const CustomFadeInLeft(
              duration: 700,
              child: CustomSubTitleResetPasswordPage(),
            ),

            // ✅ الإيميل يجي من اليمين
            CustomFadeInRight(
              duration: 900,
              child: CustomTextFormEmail(
                controller: emailController,
                hintText: context.translate(LangKeys.email),
                validate: AppValidators.validateEmail,
              ),
            ),

            // ✅ الزرار يطلع من تحت ببطء
            CustomFadeInUp(
              duration: 1100,
              child: CustomBlocListenerForgotPassword(
                formKey: formKey,
                emailController: emailController,
              ),
            ),

            // ✅ زرار الرجوع يهبط من فوق في الآخر
            const CustomFadeInDown(
              duration: 1300,
              child: CustomButtonReturnLoginScreen(),
            ),
          ],
        ),
      ),
    );
  }
}