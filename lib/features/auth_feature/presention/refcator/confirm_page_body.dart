import 'package:car_app_new/core/common/animations/animation_do.dart';
import 'package:car_app_new/core/common/widgets/section_logo_and_title_qent.dart';
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

          // ✅ اللوجو يهبط من فوق بسرعة
          const SliverToBoxAdapter(
            child: CustomFadeInDown(
              duration: 500,
              child: SectionLogoAndTitleQent(),
            ),
          ),

          SliverToBoxAdapter(child: verticalSpace(50 * 5)),

          // ✅ العنوان يجي من اليمين
          const SliverToBoxAdapter(
            child: Center(
              child: CustomFadeInRight(
                duration: 700,
                child: CustomTitleTextAuth(
                  title: 'Enter Confirm Code',
                ),
              ),
            ),
          ),

          // ✅ السب تايتل يجي من الشمال - عكس العنوان
          const SliverToBoxAdapter(
            child: CustomFadeInLeft(
              duration: 800,
              child: CustomSubTitleTextAuth(
                subTitle: 'We have sent a code to your phone',
              ),
            ),
          ),

          SliverToBoxAdapter(child: verticalSpace(40)),

          // ✅ الكود يطلع من تحت ببطء عشان يلفت الانتباه
          const SliverToBoxAdapter(
            child: CustomFadeInUp(
              duration: 1000,
              child: SectionConfirmCode(),
            ),
          ),
        ],
      ),
    );
  }
}
