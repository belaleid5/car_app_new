import 'package:car_app_new/core/extensions/animation_extensions.dart';
import 'package:car_app_new/core/routes/routes_names.dart';
import 'package:car_app_new/core/services/shared_pref/shared_keys.dart';
import 'package:car_app_new/core/services/shared_pref/shared_pref.dart';
import 'package:car_app_new/features/onBording/presention/widgets/custom_title_splash_screen.dart';
import 'package:car_app_new/features/onBording/presention/widgets/custom_logo_splash.dart';
import 'package:car_app_new/features/onBording/presention/widgets/custom_suptitle_splash_screen.dart';
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
    await Future.delayed(const Duration(seconds: 3));
    if (mounted) {
      await Navigator.pushReplacementNamed(
        context,
        SharedPref().getString(PrefKeys.accessToken) != null
            ? AppRoutesNames.homePage
            : AppRoutesNames.pageViewBoarding,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomSplashLogo()
                  .animateScaleNFadeHorizontal()
                  .animateRotate(
                    duration: const Duration(milliseconds: 1500),
                  ),
        
              const SizedBox(height: 32),
        
              const CustomTitleSplashScreen().animateShimmer(
                colors: [
                  Colors.white.withOpacity(0.5),
                  Colors.white,
                  Colors.white.withOpacity(0.5),
                ],
              ),
        
              const SizedBox(height: 16),
        
              const CustomSupTitleSplashScreen().animateBottomToTop(
                duration: const Duration(milliseconds: 800),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
