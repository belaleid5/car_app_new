import 'package:car_app_new/core/common/functions/spink_kit.dart';
import 'package:car_app_new/core/extensions/animation_extensions.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/extensions/custom_toast.dart';
import 'package:car_app_new/core/language/lang_keys.dart';
import 'package:car_app_new/features/auth_feature/presention/manger/bloc_login/login_bloc.dart';
import 'package:car_app_new/features/auth_feature/presention/manger/bloc_login/login_event.dart';
import 'package:car_app_new/features/auth_feature/presention/manger/bloc_login/login_state.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/button_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBlocBuilderLoginAuth extends StatelessWidget {
  const CustomBlocBuilderLoginAuth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) =>
          ButtonAuth(
            widgetTitle: state is Loading
                ? loadingWidget(context)
                : Text(
                    context.translate(LangKeys.login),
                    style: context.textStyle.copyWith(
                      color: context.color.background,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
            onPressed: () {
              validateAuth(context);
            },
          ).animateRightLeft(
            duration: const Duration(milliseconds: 1550),
          ),
    );
  }

  void validateAuth(BuildContext context) {
    final loginBloc = context.read<LoginBloc>();
    if (loginBloc.formKey.currentState!.validate()) {
      if (!loginBloc.rememberMe) {
        CustomToast.show(
          context,
          'Please check Remember Me to continue',
        );
        return;
      }
      loginBloc.add(const LoginEvent.login());
    }
  }
}
