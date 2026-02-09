import 'package:car_app_new/core/extensions/animation_extensions.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/functions/spink_kit.dart';
import 'package:car_app_new/core/services/shared_pref/shared_keys.dart';
import 'package:car_app_new/core/services/shared_pref/shared_pref.dart';
import 'package:car_app_new/features/auth/presention/manger/bloc_confirm/bloc/confirm_code_bloc.dart';
import 'package:car_app_new/features/auth/presention/manger/bloc_confirm/bloc/confirm_code_event.dart';
import 'package:car_app_new/features/auth/presention/manger/bloc_confirm/bloc/confirm_code_state.dart';
import 'package:car_app_new/features/auth/presention/widgets/button_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBlocBuilderConfirmCodeAuth extends StatelessWidget {
  const CustomBlocBuilderConfirmCodeAuth({
    required this.formKey, required this.codeController, super.key,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController codeController;


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConfirmCodeBloc, ConfirmCodeState>(
      builder: (context, state) {
        return ButtonAuth(
          widgetTitle: state.maybeWhen(
            loading: () => loadingWidget(context),
            orElse: () => Text(
              'Confirm',
              style: context.textStyle.copyWith(
                color: context.color.background,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          onPressed: () => _onConfirmPressed(context),
        );
      },
    ).animateRightLeft(
      duration: const Duration(milliseconds: 1200),
    );
  }

  void _onConfirmPressed(BuildContext context) {
    if (!formKey.currentState!.validate()) return;

    context.read<ConfirmCodeBloc>().add(
          ConfirmCodeEvent.confirmCode(
            code: codeController.text.trim(),
            verifyToken: SharedPref().getString(PrefKeys.verifyToken) ?? '',
          ),
        );
  }
}
