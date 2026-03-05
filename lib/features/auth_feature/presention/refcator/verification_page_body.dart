import 'package:car_app_new/core/common/animations/animation_do.dart';
import 'package:car_app_new/core/common/functions/spink_kit.dart';
import 'package:car_app_new/core/common/widgets/section_logo_and_title_qent.dart';
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
import 'package:car_app_new/features/auth_feature/presention/widgets/Custom_wlcome_text.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/button_auth.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/confirm/custom_text_send_verifcation.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/sign_up/custom_text_form_country.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/vrifiycation_section.dart/verification_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerificationPageBody extends StatelessWidget {
  const VerificationPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: context.color.background,
            leadingWidth: 150,
            leading: const CustomFadeInDown(
              duration: 500,
              child: SectionLogoAndTitleQent(),
            ),
          ),

          SliverToBoxAdapter(child: verticalSpace(60 * 4)),

          const SliverToBoxAdapter(
            child: Center(
              child: CustomFadeInRight(
                duration: 700,
                child: CustomTitleTextAuth(
                  title: 'Verify your phone number',
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(child: verticalSpace(20)),

          const SliverToBoxAdapter(
            child: CustomFadeInLeft(
              duration: 800,
              child: CustomSubTitleTextAuth(
                subTitle: 'We have sent you an SMS with a code to number',
              ),
            ),
          ),

          SliverToBoxAdapter(child: verticalSpace(60 * 2)),

          const SliverToBoxAdapter(
            child: CustomFadeInUp(
              duration: 1000,
              child: SectionVerificationAuth(),
            ),
          ),
        ],
      ),
    );
  }
}

