import 'package:car_app_new/core/common/animations/animation_do.dart';
import 'package:car_app_new/core/common/functions/spink_kit.dart';
import 'package:car_app_new/core/extensions/app_validators.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/extensions/custom_toast.dart';
import 'package:car_app_new/core/helper/navigator_extenstion.dart';
import 'package:car_app_new/core/helper/spacing.dart';
import 'package:car_app_new/core/routes/routes_names.dart';
import 'package:car_app_new/core/services/shared_pref/shared_keys.dart';
import 'package:car_app_new/core/services/shared_pref/shared_pref.dart';
import 'package:car_app_new/features/auth_feature/presention/manger/bloc_verify_code/verify_code_phone_auth_bloc.dart';
import 'package:car_app_new/features/auth_feature/presention/manger/bloc_verify_code/verify_code_phone_auth_event.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/button_auth.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/sign_up/custom_text_form_country.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SectionVerificationAuth extends StatefulWidget {
  const SectionVerificationAuth({super.key});

  @override
  State<SectionVerificationAuth> createState() =>
      _SectionVerificationAuthState();
}

class _SectionVerificationAuthState extends State<SectionVerificationAuth> {
  final phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final accessToken = SharedPref().getString(PrefKeys.accessToken) ?? '';

    return BlocConsumer<VerifyCodePhoneAuthBloc, VerifyCodePhoneAuthState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (response) {
            CustomToast.showSuccess(context, response.code);
            context.pushNamed(
              AppRoutesNames.ConfirmRoute,
              arguments: response.verifyToken,
            );
            SharedPref().setString(PrefKeys.verifyToken, response.verifyToken);
          },
          failure: (error) {
            CustomToast.showError(context, error);
          },
        );
      },
      builder: (context, state) {
        final isLoading = state.maybeWhen(
          loading: () => true,
          orElse: () => false,
        );

        return Form(
          key: _formKey,
          child: Column(
            children: [
              CustomFadeInRight(
                duration: 900,
                child: CustomTextFormCountry(
                  controller: phoneController,
                  validate: AppValidators.validatePhone,
                  onChanged: (completeNumber) {
                    print('Complete Phone Number: $completeNumber');
                  },
                  onCountryChanged: (countryCode, dialCode) {
                    print('Country ISO: $countryCode');
                    print('Dial Code: $dialCode');
                  },
                ),
              ),

              verticalSpace(20),

              CustomFadeInUp(
                duration: 1100,
                child: ButtonAuth(
                  widgetTitle: isLoading
                      ? loadingWidget(context)
                      : Text(
                          'Verification',
                          style: context.textStyle.copyWith(
                            color: context.color.background,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                  onPressed: () {
                    if (isLoading) return;
                    if (_formKey.currentState!.validate()) {
                      print('Sending Phone Number: $phoneController');
                      context.read<VerifyCodePhoneAuthBloc>().add(
                        VerifyCodePhoneAuthEvent.verifyPhone(
                          phoneNumber: phoneController.text,
                          accessToken: accessToken,
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }
}
