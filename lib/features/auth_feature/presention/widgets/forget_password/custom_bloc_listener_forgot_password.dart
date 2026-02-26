import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/extensions/custom_toast.dart';
import 'package:car_app_new/core/routes/routes_names.dart';
import 'package:car_app_new/features/auth_feature/presention/manger/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/forget_password/custom_bloc_builder_forgot_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBlocListenerForgotPassword extends StatelessWidget {
  const CustomBlocListenerForgotPassword({
    super.key, required this.formKey, required this.emailController,
  });
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController ;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgotPasswordBloc, ForgotPasswordState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (user) async {

            
            CustomToast.showSuccess(context, user.message);
            await context.pushReplacementNamed(
              AppRoutesNames.resetPasswordRoute,
              arguments: user.resetToken,
            );
          },
          error: (error) {
            CustomToast.showError(context, error);
          },
        );
      },
      child:  CustomBlocBuilderForgotPasswordAuth(formKey: formKey, emailController: emailController,),
    );
  }
}
