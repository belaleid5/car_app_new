import 'package:car_app_new/core/common/widgets/custom_form_password.dart';
import 'package:car_app_new/core/extensions/animation_extensions.dart';
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
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical:45 ),
      child: Form(
        key: formController.formKey,
        child: Column(
          spacing:10 ,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PinputField(
              controller: formController.codeController,
            ).animateShakeAlarm(),
            CustomTextFormPassword(
              controller: formController.passwordController,
              hintText: 'New Password',
              validate: AppValidators.validatePassword,
            ).animateRightLeft(),
            CustomTextFormPassword(
              controller: formController.confirmPasswordController,
              hintText: 'Confirm New Password',
              isConfirmPassword: true,
              validate: (value) => AppValidators.validateConfirmPassword(
                value,
                formController.passwordController.text,
              ),
            ).animateRightLeft(
              duration: const Duration(milliseconds: 1200),
            ),

            const CustomBlocListenerResetPassword(),
          ],
        ),
      ),
    );
  }
}
