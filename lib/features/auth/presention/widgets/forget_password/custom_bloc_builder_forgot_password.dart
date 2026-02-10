import 'package:car_app_new/core/extensions/animation_extensions.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/functions/spink_kit.dart';
import 'package:car_app_new/features/auth/presention/manger/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:car_app_new/features/auth/presention/widgets/button_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBlocBuilderForgotPasswordAuth extends StatelessWidget {
  const CustomBlocBuilderForgotPasswordAuth({
    required this.formKey,
    required this.emailController,
    super.key,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
      builder: (context, state) {
        final isLoading = state.maybeWhen(
          loading: () => true,
          orElse: () => false,
        );

        return ButtonAuth(
          widgetTitle: isLoading
              ? loadingWidget(context)
              : Text(
                  'Continue',
                  style: context.textStyle.copyWith(
                    color: context.color.background,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
          onPressed: isLoading ? null : () => _onContinuePressed(context),
        );
      },
    ).animateRightLeft(
      duration: const Duration(milliseconds: 1200),
    );
  }

  void _onContinuePressed(BuildContext context) {
    if (!formKey.currentState!.validate()) return; 

    context.read<ForgotPasswordBloc>().add(
      ForgotPasswordEvent.forgotPassword(
        email: emailController.text.trim(), 
      ),
    );
  }
}
