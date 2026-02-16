import 'package:car_app_new/core/common/widgets/custom_button.dart';
import 'package:car_app_new/core/common/widgets/section_logo_and_title_qent.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/helper/spacing.dart';
import 'package:car_app_new/core/routes/routes_names.dart';
import 'package:car_app_new/core/styles/app_images.dart';
import 'package:car_app_new/core/styles/theme/my_colors.dart';
import 'package:car_app_new/features/auth/presention/widgets/dont_have_an_acount.dart';
import 'package:car_app_new/features/auth/presention/widgets/sign_up/section_auth_sign_up.dart';
import 'package:car_app_new/features/auth/presention/widgets/sign_up/sign_up_text_title.dart';
import 'package:car_app_new/features/auth/presention/widgets/social_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpPageBody extends StatelessWidget {
  const SignUpPageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: verticalSpace(60.h),
          ),
          const SliverToBoxAdapter(
            child: SectionLogoAndTitleQent(),
          ),
          SliverToBoxAdapter(
            child: verticalSpace(40.h),
          ),
          const SliverToBoxAdapter(
            child: SignUpTextTitle(),
          ),
          SliverToBoxAdapter(
            child: verticalSpace(10.h),
          ),
          const SliverToBoxAdapter(
            child: SectionAuthSignUP(),
          ),
          SliverToBoxAdapter(
            child: verticalSpace(20.h),
          ),
          SliverToBoxAdapter(
            child: CustomButton(
              textColor: context.colors.black,
              text: 'Login',
              onPressed: () {},
            ),
          ),
          SliverToBoxAdapter(
            child: verticalSpace(20.h),
          ),
          const SliverToBoxAdapter(
            child: CustomButtonSocial(
              titleButton: 'Apple Now',
              iconPath: AppImages.appleIcon,
            ),
          ),
          SliverToBoxAdapter(
            child: verticalSpace(15.h),
          ),
          const SliverToBoxAdapter(
            child: CustomButtonSocial(
              titleButton: 'Google Play',
              iconPath: AppImages.googleIcon,
            ),
          ),
          SliverToBoxAdapter(
            child: verticalSpace(30.h),
          ),
          SliverToBoxAdapter(
            child: DontHaveOrHaveAnAccountText(
              firstTitle: 'Already have an account? ',
              secondTitle: 'Log In',
              onTap: () async {
                await context.pushReplacementNamed(AppRoutesNames.loginRoute);
              },
            ),
          ),
        ],
      ),
    );
  }
}
