import 'package:car_app_new/core/extensions/animation_extensions.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/extensions/custom_toast.dart';
import 'package:car_app_new/core/functions/spink_kit.dart';
import 'package:car_app_new/core/language/lang_keys.dart';
import 'package:car_app_new/core/routes/routes_names.dart';
import 'package:car_app_new/features/auth/presention/manger/bloc_register/register_bloc.dart';
import 'package:car_app_new/features/auth/presention/widgets/button_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterBlocListener extends StatelessWidget {
  const RegisterBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterBloc, RegisterState>(
      listenWhen: (previous, current) {
        return current.maybeWhen(
          success: (_) => true,
          error: (_) => true,
          orElse: () => false,
        );
      },
      listener: (context, state) {
        state.whenOrNull(
          success: (data) {            
            CustomToast.showSuccess(context, 'Registration successful!');
            Future.delayed(const Duration(milliseconds: 1500), () async {
                await context.pushReplacementNamed(AppRoutesNames.verificationRoute);          
            });
          },
          error: (error) {
            CustomToast.showError(context, 
            state is Error ? error : 'Registration failed. Please try again.'
            );
          },
        );
      },
      buildWhen: (previous, current) {
        return current.maybeWhen(
          loading: () => true,
          initial: () => true,
          locationsLoading: () => false,
          locationsLoaded: (_) => false,
          locationSelected: (_, _) => false,
          success: (_) => false,
          error: (_) => false,
          orElse: () => false,
        );
      },
      builder: (context, state) {
        final isLoading = state.maybeWhen(
          loading: () => true,
          orElse: () => false,
        );

        return ButtonAuth(
          widgetTitle: isLoading
              ? loadingWidget(context)
              : Text(
                  context.translate(LangKeys.signUp),
                  style: context.textStyle.copyWith(
                    color: context.color.background,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
          onPressed: isLoading ? () {} : () => _validateAndRegister(context),
        ).animateRightLeft(
          duration: const Duration(milliseconds: 1550),
        );
      },
    );
  }

  void _validateAndRegister(BuildContext context) {
    final registerBloc = context.read<RegisterBloc>();

    if (!registerBloc.formKey.currentState!.validate()) {
      return;
    }

    if (registerBloc.selectedCountryId == null) {
      CustomToast.showError(context, 'Please select a country');
      return;
    }

    if (registerBloc.selectedLocationId == null) {
      CustomToast.showError(context, 'Please select a location');
      return;
    }

    registerBloc.add(const RegisterEvent.register());
  }
}
