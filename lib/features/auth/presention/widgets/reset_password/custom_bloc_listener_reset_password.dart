import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/extensions/custom_toast.dart';
import 'package:car_app_new/core/routes/routes_names.dart';
import 'package:car_app_new/features/auth/presention/manger/reset_password/bloc/reset_password_bloc.dart';
import 'package:car_app_new/features/auth/presention/manger/reset_password/bloc/reset_password_state.dart';
import 'package:car_app_new/features/auth/presention/widgets/reset_password/custom_bloc_builder_confrim_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBlocListenerResetPassword extends StatelessWidget {
  const CustomBlocListenerResetPassword({super.key}); 

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResetPasswordBloc, ResetPasswordState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (response) async {
            CustomToast.showSuccess(context, response.message);
            await context.pushReplacementNamed(AppRoutesNames.loginRoute);
          },
          error: (error) {
            CustomToast.showError(context, error);
          },
        );
      },
      child: const CustomBlocBuilderResetPassword(), 
    );
  }
}
