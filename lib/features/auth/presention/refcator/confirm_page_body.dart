import 'package:car_app_new/core/extensions/animation_extensions.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/extensions/custom_toast.dart';
import 'package:car_app_new/core/functions/spink_kit.dart';
import 'package:car_app_new/core/helper/spacing.dart';
import 'package:car_app_new/core/routes/routes_names.dart';
import 'package:car_app_new/core/services/shared_pref/shared_keys.dart';
import 'package:car_app_new/core/services/shared_pref/shared_pref.dart';
import 'package:car_app_new/features/auth/presention/manger/bloc_confirm/bloc/confirm_code_bloc.dart';
import 'package:car_app_new/features/auth/presention/manger/bloc_confirm/bloc/confirm_code_event.dart';
import 'package:car_app_new/features/auth/presention/manger/bloc_confirm/bloc/confirm_code_state.dart';
import 'package:car_app_new/features/auth/presention/widgets/Custom_wlcome_text.dart';
import 'package:car_app_new/features/auth/presention/widgets/button_auth.dart';
import 'package:car_app_new/features/auth/presention/widgets/confirm/custom_text_send_verifcation.dart';
import 'package:car_app_new/features/auth/presention/widgets/confirm/pinput_field.dart';
import 'package:car_app_new/features/auth/presention/widgets/confirm/section_confirm_code.dart';
import 'package:car_app_new/features/auth/presention/widgets/secction_logo_and_title_qent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfirmPageBody extends StatelessWidget {
  const ConfirmPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: verticalSpace(60.h)),
          const SliverToBoxAdapter(child: SectionLogoAndTitleQent()),
          SliverToBoxAdapter(child: verticalSpace(240.h)),
          SliverToBoxAdapter(
            child: Center(
              child: const CustomTitleTextAuth(
                title: 'Enter Confirm Code',
              ).animateRightLeft(),
            ),
          ),
          SliverToBoxAdapter(child: verticalSpace(20.h)),
          SliverToBoxAdapter(
            child: const CustomSubTitleTextAuth(
              subTitle: 'We have sent a code to your phone',
            ).animateRightLeft(),
          ),
          SliverToBoxAdapter(child: verticalSpace(30.h)),
          const SliverToBoxAdapter(
            child: SectionConfirmCode(),
          ),
        ],
      ),
    );
  }
}


