import 'package:car_app_new/core/common/animations/animation_do.dart';
import 'package:car_app_new/core/common/widgets/section_logo_and_title_qent.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/helper/spacing.dart';
import 'package:car_app_new/core/routes/routes_names.dart';
import 'package:car_app_new/core/styles/app_images.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/Custom_wlcome_text.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/dont_have_an_acount.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/login/section_login_auht.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/section_divider_or_text.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/social_button.dart';
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

              const SliverToBoxAdapter(
                child: CustomFadeInDown(
                  duration: 700,
                  child: SectionLogoAndTitleQent(),
                ),
              ),

              SliverToBoxAdapter(child: verticalSpace(60)),

       
              const SliverToBoxAdapter(
                child: CustomFadeInRight(
                  duration: 800,
                  child: CustomTitleTextAuth(
                    title: 'Welcome Back \nReady to hit the road.',
                  ),
                ),
              ),

              SliverToBoxAdapter(child: verticalSpace(120)),

   
              const SliverToBoxAdapter(
                child: CustomFadeInUp(
                  duration: 900,
                  child: SectionLoginAuth(),
                ),
              ),

              SliverToBoxAdapter(child: verticalSpace(30)),

              const SliverToBoxAdapter(
                child: CustomFadeInLeft(
                  duration: 900,
                  child: SectionOrText(),
                ),
              ),

              SliverToBoxAdapter(child: verticalSpace(20)),

              const SliverToBoxAdapter(
                child: CustomFadeInUp(
                  duration: 1000,
                  child: CustomButtonSocial(
                    titleButton: 'Apple Now',
                    iconPath: AppImages.appleIcon,
                  ),
                ),
              ),

              SliverToBoxAdapter(child: verticalSpace(15)),

              const SliverToBoxAdapter(
                child: CustomFadeInUp(
                  duration: 1100,
                  child: CustomButtonSocial(
                    titleButton: 'Google Play',
                    iconPath: AppImages.googleIcon,
                  ),
                ),
              ),

              SliverToBoxAdapter(child: verticalSpace(30)),

              SliverToBoxAdapter(
                child: CustomFadeInUp(
                  duration: 1200,
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}
