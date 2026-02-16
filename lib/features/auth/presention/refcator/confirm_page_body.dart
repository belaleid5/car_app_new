import 'package:car_app_new/core/common/widgets/section_logo_and_title_qent.dart';
import 'package:car_app_new/core/extensions/animation_extensions.dart';
import 'package:car_app_new/core/helper/spacing.dart';
import 'package:car_app_new/features/auth/presention/widgets/Custom_wlcome_text.dart';
import 'package:car_app_new/features/auth/presention/widgets/confirm/custom_text_send_verifcation.dart';
import 'package:car_app_new/features/auth/presention/widgets/confirm/section_confirm_code.dart';
import 'package:flutter/material.dart';

class ConfirmPageBody extends StatelessWidget {
  const ConfirmPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: verticalSpace(60)),

          /// Logo
          const SliverToBoxAdapter(
            child: SectionLogoAndTitleQent(),
          ),

          SliverToBoxAdapter(child: verticalSpace(240)),

          /// Title
          SliverToBoxAdapter(
            child: Center(
              child: const CustomTitleTextAuth(
                title: 'Enter Confirm Code',
              ).animateRightLeft(),
            ),
          ),

          SliverToBoxAdapter(child: verticalSpace(20)),

          /// Subtitle
          SliverToBoxAdapter(
            child: const CustomSubTitleTextAuth(
              subTitle: 'We have sent a code to your phone',
            ).animateRightLeft(),
          ),

          SliverToBoxAdapter(child: verticalSpace(30)),

          /// Confirm Code Section
          const SliverToBoxAdapter(
            child: SectionConfirmCode(),
          ),
        ],
      ),
    );
  }
}
