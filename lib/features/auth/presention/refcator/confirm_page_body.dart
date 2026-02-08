import 'package:car_app_new/core/extensions/animation_extensions.dart';
import 'package:car_app_new/core/helper/spacing.dart';
import 'package:car_app_new/core/styles/theme/my_colors.dart';
import 'package:car_app_new/features/auth/presention/widgets/Custom_wlcome_text.dart';
import 'package:car_app_new/features/auth/presention/widgets/button_auth.dart';
import 'package:car_app_new/features/auth/presention/widgets/confirm/custom_text_send_verifcation.dart';
import 'package:car_app_new/features/auth/presention/widgets/confirm/pinput_field.dart';
import 'package:car_app_new/core/common/widgets/secction_logo_and_title_qent.dart';
import 'package:flutter/material.dart';
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
          SliverToBoxAdapter(child: verticalSpace(60.h * 4)),
          SliverToBoxAdapter(
            child: Center(
              child: const CustomTitleTextAuth(
                title: 'Enter   Confirm code',
              ).animateRightLeft(),
            ),
          ),
          SliverToBoxAdapter(child: verticalSpace(20.h)),
          SliverToBoxAdapter(
            child: const CustomSubTitleTextAuth(subTitle: 'We have send a Code to : +100******00',).animateRightLeft(),
          ),
          SliverToBoxAdapter(child: verticalSpace(20.h)),
          SliverToBoxAdapter(
            child: const PinputField().animateShakeAlarm(),
          ),
          SliverToBoxAdapter(child: verticalSpace(40.h)),
          SliverToBoxAdapter(
            child: ButtonAuth(
              widgetTitle: Text(
                'Confirm',
                style: TextStyle(
                  color: context.colors.background,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                
              },
            ).animateRightLeft(),
          ),
        ],
      ),
    );
  }
}
