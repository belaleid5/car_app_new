import 'package:car_app_new/core/common/widgets/section_logo_and_title_qent.dart';
import 'package:car_app_new/core/extensions/animation_extensions.dart';
import 'package:car_app_new/core/helper/spacing.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/Custom_wlcome_text.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/confirm/custom_text_send_verifcation.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/confirm/section_confirm_code.dart';
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

          const SliverToBoxAdapter(
            child: SectionLogoAndTitleQent(),
          ),

          SliverToBoxAdapter(child: verticalSpace(50 * 5)),

          SliverToBoxAdapter(
            child: Center(
              child: const CustomTitleTextAuth(
                title: 'Enter Confirm Code',
              ).animateRightLeft(),
            ),
          ),

          SliverToBoxAdapter(
            child: const CustomSubTitleTextAuth(
              subTitle: 'We have sent a code to your phone',
            ).animateRightLeft(),
          ),
          SliverToBoxAdapter(child: verticalSpace(40)),
          const SliverToBoxAdapter(child: SectionConfirmCode()),
        ],
      ),
    );
  }
}
