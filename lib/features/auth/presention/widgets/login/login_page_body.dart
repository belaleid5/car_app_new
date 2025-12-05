import 'package:car_app_new/core/helper/spacing.dart';
import 'package:car_app_new/features/auth/presention/widgets/login/Custom_wlcome_text.dart';
import 'package:car_app_new/features/auth/presention/widgets/login/section_login_auht.dart';
import 'package:car_app_new/features/auth/presention/widgets/login/section_rememper_user_and_forget_password.dart';
import 'package:car_app_new/features/auth/presention/widgets/secction_logo_and_title_qent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPageBody extends StatelessWidget {
  const LoginPageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: verticalSpace(60.h),
          ),
          const SliverToBoxAdapter(
            child: SectionLogoAndTitleQent(),
          ),
          SliverToBoxAdapter(
            child: verticalSpace(60.h),
          ),
          const SliverToBoxAdapter(
            child: CustomWelcomeText(),
          ),
          SliverToBoxAdapter(
            child: verticalSpace(120.h),
          ),
          const SliverToBoxAdapter(
            child: SectionLoginAuth(),
          ),
          const SliverToBoxAdapter(
            child: SectionRememberUserWithForgetPassword(),
          ),
        ],
      ),
    );
  }
}
