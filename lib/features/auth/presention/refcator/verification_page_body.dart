import 'package:car_app_new/core/extensions/animation_extensions.dart';
import 'package:car_app_new/core/extensions/app_validators.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/extensions/custom_toast.dart';
import 'package:car_app_new/core/functions/spink_kit.dart';
import 'package:car_app_new/core/helper/spacing.dart';
import 'package:car_app_new/core/routes/routes_names.dart';
import 'package:car_app_new/core/services/shared_pref/shared_keys.dart';
import 'package:car_app_new/core/services/shared_pref/shared_pref.dart';
import 'package:car_app_new/features/auth/presention/manger/verify_code_manger/verify_code_phone_auth_bloc.dart';
import 'package:car_app_new/features/auth/presention/manger/verify_code_manger/verify_code_phone_auth_event.dart';
import 'package:car_app_new/features/auth/presention/widgets/Custom_wlcome_text.dart';
import 'package:car_app_new/features/auth/presention/widgets/button_auth.dart';
import 'package:car_app_new/features/auth/presention/widgets/confirm/custom_text_send_verifcation.dart';
import 'package:car_app_new/core/common/widgets/secction_logo_and_title_qent.dart';
import 'package:car_app_new/features/auth/presention/widgets/sign_up/custom_text_form_country.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerificationPageBody extends StatelessWidget {
  const VerificationPageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.sp),
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: context.color.background,
            leadingWidth: 150.w,
            leading: const SectionLogoAndTitleQent(),
          ),
          SliverToBoxAdapter(child: verticalSpace(60.h * 4)),
          SliverToBoxAdapter(
            child: Center(
              child: const CustomTitleTextAuth(
                title: 'Verify your phone number',
              ).animateRightLeft(),
            ),
          ),
          SliverToBoxAdapter(child: verticalSpace(20.h)),
          SliverToBoxAdapter(
            child: const CustomSubTitleTextAuth(
              subTitle: 'We have sent you an SMS with a code to number',
            ).animateRightLeft(),
          ),
          SliverToBoxAdapter(child: verticalSpace(60.h * 2)),
          const SliverToBoxAdapter(
            child: SectionVerificationAuth(),
          ),
        ],
      ),
    );
  }
}

class SectionVerificationAuth extends StatefulWidget {
  const SectionVerificationAuth({
    super.key,
  });

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
            context.pushNamedAndRemoveUntil(AppRoutesNames.ConfirmRoute);
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
              CustomTextFormCountry(
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
              verticalSpace(20.h),
              ButtonAuth(
                widgetTitle: isLoading
                    ? loadingWidget(context)
                    : Text(
                        'Verification',
                        style: context.textStyle.copyWith(
                          color: context.color.background,
                          fontSize: 16.sp,
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
              ).animateRightLeft(
                duration: const Duration(milliseconds: 1550),
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
