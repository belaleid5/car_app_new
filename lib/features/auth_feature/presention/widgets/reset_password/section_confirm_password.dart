import 'package:car_app_new/core/common/animations/animation_do.dart';
import 'package:car_app_new/core/common/widgets/custom_form_password.dart';
import 'package:car_app_new/core/extensions/app_validators.dart';
import 'package:car_app_new/features/auth_feature/presention/manger/reset_password/bloc/reset_password_bloc.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/pinput_field.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/reset_password/custom_bloc_listener_reset_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SectionConfirmPassword extends StatelessWidget {
  const SectionConfirmPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final formController = context.read<ResetPasswordBloc>().formController;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 45),
      child: Form(
        key: formController.formKey,
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFadeInDown(
              duration: 600,
              child: PinputField(
                controller: formController.codeController,
              ),
            ),

            CustomFadeInRight(
              duration: 800,
              child: CustomTextFormPassword(
                controller: formController.passwordController,
                hintText: 'New Password',
                validate: AppValidators.validatePassword,
              ),
            ),

            CustomFadeInLeft(
              duration: 1000,
              child: CustomTextFormPassword(
                controller: formController.confirmPasswordController,
                hintText: 'Confirm New Password',
                isConfirmPassword: true,
                validate: (value) => AppValidators.validateConfirmPassword(
                  value,
                  formController.passwordController.text,
                ),
              ),
            ),

          
            const CustomFadeInUp(
              duration: 1200,
              child: CustomBlocListenerResetPassword(),
            ),
          ],
        ),
      ),
    );
  }
}