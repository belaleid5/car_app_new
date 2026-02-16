import 'package:car_app_new/core/common/widgets/section_logo_and_title_qent.dart';
import 'package:car_app_new/core/extensions/animation_extensions.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/helper/spacing.dart';
import 'package:car_app_new/core/routes/routes_names.dart';
import 'package:car_app_new/core/styles/app_images.dart';
import 'package:car_app_new/features/auth/presention/widgets/Custom_wlcome_text.dart';
import 'package:car_app_new/features/auth/presention/widgets/dont_have_an_acount.dart';
import 'package:car_app_new/features/auth/presention/widgets/login/section_login_auht.dart';
import 'package:car_app_new/features/auth/presention/widgets/section_divider_or_text.dart';
import 'package:car_app_new/features/auth/presention/widgets/social_button.dart';
import 'package:flutter/material.dart';

class LoginPageBody extends StatelessWidget {
  const LoginPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: verticalSpace(60)),
              const SliverToBoxAdapter(child: SectionLogoAndTitleQent()),
              SliverToBoxAdapter(child: verticalSpace(60)),
              SliverToBoxAdapter(
                child: const CustomTitleTextAuth(
                  title: 'Welcome Back \nReady to hit the road.',
                ).animateRightLeft(),
              ),
              SliverToBoxAdapter(child: verticalSpace(120)),
              const SliverToBoxAdapter(child: SectionLoginAuth()),
              SliverToBoxAdapter(child: verticalSpace(30)),
              const SliverToBoxAdapter(child: SectionOrText()),
              SliverToBoxAdapter(child: verticalSpace(20)),
              const SliverToBoxAdapter(
                child: CustomButtonSocial(
                  titleButton: 'Apple Now',
                  iconPath: AppImages.appleIcon,
                ),
              ),
              SliverToBoxAdapter(child: verticalSpace(15)),
              const SliverToBoxAdapter(
                child: CustomButtonSocial(
                  titleButton: 'Google Play',
                  iconPath: AppImages.googleIcon,
                ),
              ),
              SliverToBoxAdapter(child: verticalSpace(30)),
              SliverToBoxAdapter(
                child: DontHaveOrHaveAnAccountText(
                  firstTitle: "Don't have an account? ",
                  secondTitle: 'Sign Up',
                  onTap: () async {
                    await context.pushReplacementNamed(
                      AppRoutesNames.signUpRoute,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
