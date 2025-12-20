import 'package:car_app_new/core/common/widgets/custom_toast.dart';
import 'package:car_app_new/features/auth/presention/manger/bloc/login_bloc.dart';
import 'package:car_app_new/features/auth/presention/manger/bloc/login_state.dart';
import 'package:car_app_new/features/auth/presention/widgets/login/custom_bloc_builder_login_ath.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listenWhen: (previous, current) => current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          success: (data) {
              CustomToast.showSuccess(context, 'Login successful!');
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
