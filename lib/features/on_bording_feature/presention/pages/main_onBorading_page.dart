import 'package:car_app_new/core/app/theme/my_colors.dart';
import 'package:car_app_new/core/extensions/animation_extensions.dart';
import 'package:car_app_new/core/helper/spacing.dart';
import 'package:car_app_new/core/routes/routes_names.dart';
import 'package:car_app_new/core/services/shared_pref/shared_keys.dart';
import 'package:car_app_new/core/services/shared_pref/shared_pref.dart';
import 'package:car_app_new/features/on_bording_feature/presention/widgets/custom_logo_splash.dart';
import 'package:car_app_new/features/on_bording_feature/presention/widgets/custom_suptitle_splash_screen.dart';
import 'package:car_app_new/features/on_bording_feature/presention/widgets/custom_title_splash_screen.dart';
import 'package:flutter/material.dart';

class MainOnboardingPage extends StatefulWidget {
  const MainOnboardingPage({super.key});

  @override
  State<MainOnboardingPage> createState() => _MainOnboardingPageState();
}

class _MainOnboardingPageState extends State<MainOnboardingPage> {
  @override
  void initState() {
    super.initState();
    _navigateToWelcome();
  }

  Future<void> _navigateToWelcome() async {
    await Future<void>.delayed(const Duration(seconds: 3));
    if (mounted) {
      await Navigator.pushReplacementNamed(
        context,
        SharedPref().getString(PrefKeys.accessToken) != null
            ? AppRoutesNames.bottomNavBarRoute
            : AppRoutesNames.pageViewBoarding,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomSplashLogo()
                .animateScaleNFadeHorizontal()
                .animateRotate(
                  duration: const Duration(milliseconds: 1500),
                ),

            verticalSpace(32),

            const CustomTitleSplashScreen().animateRightLeft(
              duration: const Duration(milliseconds: 700),
            ),

            verticalSpace(16),

            const CustomSupTitleSplashScreen()
                .animateBlur(
                  duration: const Duration(milliseconds: 600),
                )
                .animateBottomToTop(
                  duration: const Duration(milliseconds: 800),
                ),
          ],
        ),
      ),
    );
  }
}
