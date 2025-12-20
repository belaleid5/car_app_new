import 'package:car_app_new/core/extensions/animation_extensions.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/functions/spink_kit.dart';
import 'package:car_app_new/core/language/lang_keys.dart';
import 'package:car_app_new/features/auth/presention/manger/bloc/login_bloc.dart';
import 'package:car_app_new/features/auth/presention/manger/bloc/login_event.dart';
import 'package:car_app_new/features/auth/presention/manger/bloc/login_state.dart';
import 'package:car_app_new/features/auth/presention/widgets/button_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
            backgroundColor: context.color.button,
            onPressed: () {
              validateAuth(context);
            },
          ).animateRightLeft(
            duration: const Duration(milliseconds: 1550),
          ),
    );
  }

  void validateAuth(BuildContext context) {
    if (context.read<LoginBloc>().formKey.currentState!.validate()) {
      context.read<LoginBloc>().add( const LoginEvent.login());
    }
  }
}
