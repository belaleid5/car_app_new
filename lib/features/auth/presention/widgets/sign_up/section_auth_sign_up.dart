import 'package:car_app_new/core/extensions/app_validators.dart';

import 'package:car_app_new/features/auth/presention/manger/bloc_register/register_bloc.dart';
import 'package:car_app_new/features/auth/presention/widgets/login/custom_form_password.dart';
import 'package:car_app_new/features/auth/presention/widgets/login/custom_text_form_email.dart';
import 'package:car_app_new/features/auth/presention/widgets/sign_up/available_to_create_car_check_box.dart';
import 'package:car_app_new/features/auth/presention/widgets/sign_up/custom_text_form_country.dart';
import 'package:car_app_new/features/auth/presention/widgets/sign_up/custom_text_form_full_name.dart';
import 'package:car_app_new/features/auth/presention/widgets/sign_up/custom_text_form_location.dart';
import 'package:car_app_new/features/auth/presention/widgets/sign_up/register_bloc_listneter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionAuthSignUP extends StatelessWidget {
  const SectionAuthSignUP({super.key});

  @override
  Widget build(BuildContext context) {
    final registerBloc = context.read<RegisterBloc>();

    return Form(
      key: registerBloc.formKey,
      child: Column(
        spacing: 10.h,
        children: [
          CustomTextFormFullName(
            controller: registerBloc.fullNameController,
            validate: AppValidators.validateFullName,
          ),

          CustomTextFormEmail(
            controller: registerBloc.emailController,
            validate: AppValidators.validateEmail,
          ),

          CustomTextFormPassword(
            controller: registerBloc.passwordController,
            validate: AppValidators.validatePassword,
          ),

          CustomTextFormCountry(
            controller: registerBloc.phoneController,
            validate: AppValidators.validatePhone,
            onCountryChanged: (countryCode, dialCode) {
              registerBloc.setCountry(1);
            },
          ),

          const CustomLocationDropdown(),

          AvailableToCreateCarCheckbox(registerBloc: registerBloc),

          const RegisterBlocListener(),
        ],
      ),
    );
  }
}



