import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/extensions/custom_toast.dart';
import 'package:car_app_new/core/routes/routes_names.dart';
import 'package:car_app_new/features/auth/presention/manger/bloc_login/login_bloc.dart';
import 'package:car_app_new/features/auth/presention/manger/bloc_login/login_state.dart';
import 'package:car_app_new/features/auth/presention/widgets/login/custom_bloc_builder_login_ath.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listenWhen: (previous, current) => current is Success || current is Error,
      listener: (context, state) async {
        await state.whenOrNull(
          success: (data) async {
              CustomToast.showSuccess(context, 'Login successful!');
             await context.pushReplacementNamed(AppRoutesNames.homePage);
          },
          error: (error) {
            CustomToast.showError(
              context,
              state is Error ? state.error : 'Login failed. Please try again.',
            );
          },
        );
      },
      child: const CustomBlocBuilderLoginAuth(),
    );
  }


}
