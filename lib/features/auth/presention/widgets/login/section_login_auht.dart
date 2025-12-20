import 'package:car_app_new/core/extensions/animation_extensions.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/helper/app_regix.dart';
import 'package:car_app_new/core/language/lang_keys.dart';
import 'package:car_app_new/features/auth/presention/manger/bloc/login_bloc.dart';
import 'package:car_app_new/features/auth/presention/widgets/login/custom_form_password.dart';
import 'package:car_app_new/features/auth/presention/widgets/login/custom_text_form_email.dart';
import 'package:car_app_new/features/auth/presention/widgets/login/login_bloc_linstener.dart';
import 'package:car_app_new/features/auth/presention/widgets/login/section_rememper_user_and_forget_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionLoginAuth extends StatelessWidget {
  const SectionLoginAuth({super.key});

  @override
  Widget build(BuildContext context) {
    final loginBloc = context.read<LoginBloc>();

    return Form(
      key: loginBloc.formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 10.h,
        children: [
          CustomTextFormEmail(
            controller: loginBloc.emailController,
            hintText: context.translate(LangKeys.email),
            validate: _validateEmail,
          ).animateRightLeft(
            duration: const Duration(milliseconds: 1450),
          ),
          
          CustomTextFormPassword(
            hintText: context.translate(LangKeys.password),
            controller: loginBloc.passwordController,
            validate: _validatePassword,
          ).animateRightLeft(
            duration: const Duration(milliseconds: 1500),
          ),
          
          const SectionRememberUserWithForgetPassword(),
          const LoginBlocListener(),
        ],
      ),
    );
  }

  /// Email validation
  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    if (!AppRegex.isEmailValid(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  /// Password validation
  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }
}