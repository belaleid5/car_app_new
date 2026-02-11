import 'package:car_app_new/core/extensions/animation_extensions.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/extensions/custom_toast.dart';
import 'package:car_app_new/core/helper/spacing.dart';
import 'package:car_app_new/core/routes/routes_names.dart';
import 'package:car_app_new/features/auth/presention/manger/bloc_confirm/bloc/confirm_code_bloc.dart';
import 'package:car_app_new/features/auth/presention/manger/bloc_confirm/bloc/confirm_code_state.dart';
import 'package:car_app_new/features/auth/presention/widgets/confirm/custom_bloc_builder_confirmAuth.dart';
import 'package:car_app_new/features/auth/presention/widgets/pinput_field.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionConfirmCode extends StatefulWidget {
  const SectionConfirmCode({super.key});

  @override
  State<SectionConfirmCode> createState() => _SectionConfirmCodeState();
}

class _SectionConfirmCodeState extends State<SectionConfirmCode> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _codeController = TextEditingController();


  @override
  Widget build(BuildContext context) {
 return Form(
      key: _formKey,
      child: Column(
        children: [
          PinputField(
            
            controller: _codeController,
          ).animateShakeAlarm(),

          verticalSpace(40.h),

          BlocListener<ConfirmCodeBloc, ConfirmCodeState>(
            listener: (context, state) {
              state.whenOrNull(
                success: (user) async {
                  CustomToast.showSuccess(
                      context, 'Confirm code successful');
                  await context.pushReplacementNamed(
                    AppRoutesNames.loginRoute,
                  );
                },
                failure: (error) {
                  CustomToast.showError(context, error);
                },
              );
            },
            child: CustomBlocBuilderConfirmCodeAuth(
              formKey: _formKey,
              codeController: _codeController,
            ),
          ),
        ],
      ),
    );
  }
}
