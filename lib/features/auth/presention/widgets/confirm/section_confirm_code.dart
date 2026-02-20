import 'package:car_app_new/core/extensions/animation_extensions.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/extensions/custom_toast.dart';
import 'package:car_app_new/core/helper/spacing.dart';
import 'package:car_app_new/core/routes/routes_names.dart';
import 'package:car_app_new/features/auth/presention/manger/bloc_confirm/bloc/confirm_code_bloc.dart';
import 'package:car_app_new/features/auth/presention/manger/bloc_confirm/bloc/confirm_code_state.dart';
import 'package:car_app_new/features/auth/presention/widgets/confirm/custom_bloc_builder_confirmAuth.dart';
import 'package:car_app_new/features/auth/presention/widgets/pinput_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SectionConfirmCode extends StatefulWidget {
  const SectionConfirmCode({super.key});

  @override
  State<SectionConfirmCode> createState() => _SectionConfirmCodeState();
}

class _SectionConfirmCodeState extends State<SectionConfirmCode> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _codeController = TextEditingController();
  bool _hasError = false;

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ConfirmCodeBloc, ConfirmCodeState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (user) async {
            setState(() => _hasError = false);
            CustomToast.showSuccess(context, 'Confirm code successful');
            await context.pushReplacementNamed(AppRoutesNames.loginRoute);
          },
          failure: (error) {
            setState(() => _hasError = true);
            CustomToast.showError(context, error);
          },
        );
      },
      child: Form(
        key: _formKey,
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: _hasError
                  ? PinputField(
                      key: const ValueKey('error'),
                      controller: _codeController,
                      hasError: true,
                    ).animateShakeAlarm()
                  : PinputField(
                      key: const ValueKey('normal'),
                      controller: _codeController,
                    ).animateBottomToTop(),
            ),
        
            verticalSpace(32),
        
            CustomBlocBuilderConfirmCodeAuth(
              formKey: _formKey,
              codeController: _codeController,
            ).animateBottomToTop(
              duration: const Duration(milliseconds: 600),
            ),
          ],
        ),
      ),
    );
  }
}
