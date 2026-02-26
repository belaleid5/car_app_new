import 'package:car_app_new/core/extensions/animation_extensions.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/common/functions/spink_kit.dart';
import 'package:car_app_new/features/auth_feature/data/models/request/reset_password_request_model.dart';
import 'package:car_app_new/features/auth_feature/presention/manger/reset_password/bloc/reset_password_bloc.dart';
import 'package:car_app_new/features/auth_feature/presention/manger/reset_password/bloc/reset_password_event.dart';
import 'package:car_app_new/features/auth_feature/presention/manger/reset_password/bloc/reset_password_state.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/button_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CustomBlocBuilderResetPassword extends StatelessWidget {
  const CustomBlocBuilderResetPassword({super.key});


  @override
  Widget build(BuildContext context) {
       final formController = context.read<ResetPasswordBloc>().formController;

    final resetToken = 
    ModalRoute.of(context)?.settings.arguments as String?;
    if (resetToken != null) {
      formController.resetToken = resetToken; 
    }

    
    return BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
      builder: (context, state) {
        final isLoading = state.maybeWhen(
          loading: () => true,
          orElse: () => false,
        );

        return ButtonAuth(
          widgetTitle: isLoading
              ? loadingWidget(context)
              : Text(
                  'Reset Password',
                  style: context.textStyle.copyWith(
                    color: context.color.background,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
          onPressed: isLoading ? null : () => _onPressed(context),
        );
      },
    ).animateRightLeft(
      duration: const Duration(milliseconds: 1200),
    );
  }

  void _onPressed(BuildContext context) {
    final formController = context.read<ResetPasswordBloc>().formController;

    if (!formController.formKey.currentState!.validate()) return;

    context.read<ResetPasswordBloc>().add(
      ResetPasswordEvent.resetPasswordRequested(
        resetPassword: ResetPasswordRequestModel(
          code: formController.codeController.text, 
          resetToken: formController.resetToken, 
          password: formController.passwordController.text, 
          confirmPassword: formController.confirmPasswordController.text,
          
        ),
      ),
    );
  }
}
