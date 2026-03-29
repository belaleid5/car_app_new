import 'package:car_app_new/core/common/animations/animation_do.dart';
import 'package:car_app_new/core/common/widgets/custom_button.dart';
import 'package:car_app_new/core/common/widgets/section_logo_and_title_qent.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/helper/spacing.dart';
import 'package:car_app_new/core/routes/routes_names.dart';
import 'package:car_app_new/core/styles/app_images.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/dont_have_an_acount.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/sign_up/section_auth_sign_up.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/sign_up/sign_up_text_title.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/social_button.dart';
import 'package:flutter/material.dart';

class SignUpPageBody extends StatelessWidget {
  const SignUpPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: verticalSpace(60)),

          const SliverToBoxAdapter(
            child: CustomFadeInDown(
              duration: 500,
              child: SectionLogoAndTitleQent(),
            ),
          ),

          SliverToBoxAdapter(child: verticalSpace(40)),

          const SliverToBoxAdapter(
            child: CustomFadeInRight(
              duration: 600,
              child: SignUpTextTitle(),
            ),
          ),

          SliverToBoxAdapter(child: verticalSpace(10)),

          const SliverToBoxAdapter(
            child: CustomFadeInUp(
              duration: 1200,
              child: SectionAuthSignUP(),
            ),
          ),

          SliverToBoxAdapter(child: verticalSpace(20)),

          SliverToBoxAdapter(
            child: CustomFadeInLeft(
              duration: 700,
              child: CustomButton(
                borderRadius: 15,
                textColor: context.color.black,
                text: 'Login',
                onPressed: () {},
              ),
            ),
          ),

          SliverToBoxAdapter(child: verticalSpace(20)),

          const SliverToBoxAdapter(
            child: CustomFadeInRight(
              duration: 800,
              child: CustomButtonSocial(
                titleButton: 'Apple Now',
                iconPath: AppImages.appleIcon,
              ),
            ),
          ),

          SliverToBoxAdapter(child: verticalSpace(15)),

          const SliverToBoxAdapter(
            child: CustomFadeInLeft(
              duration: 900,
              child: CustomButtonSocial(
                titleButton: 'Google Play',
                iconPath: AppImages.googleIcon,
              ),
            ),
          ),

          SliverToBoxAdapter(child: verticalSpace(30)),

          SliverToBoxAdapter(
            child: CustomFadeInDown(
              duration: 1000,
              child: DontHaveOrHaveAnAccountText(
                firstTitle: 'Already have an account? ',
                secondTitle: 'Log In',
                onTap: () async {
                  await context.pushReplacementNamed(AppRoutesNames.loginRoute);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
