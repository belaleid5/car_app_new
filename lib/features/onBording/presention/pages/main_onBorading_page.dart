// features/onboarding/presentation/pages/splash_page.dart
import 'package:car_app_new/core/common/widgets/custom_logo_app_svg.dart';
import 'package:car_app_new/core/extensions/animation_extensions.dart';
import 'package:car_app_new/core/routes/routes_names.dart';
import 'package:car_app_new/core/services/shared_pref/shared_keys.dart';
import 'package:car_app_new/core/services/shared_pref/shared_pref.dart';
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo with Multiple Animations
            const SizedBox(
              width: 120,
              height: 120,
              child: CustomLogoAppSvg(),
            ).animateScaleNFadeHorizontal().animateRotate(
              duration: const Duration(milliseconds: 1500),
            ),

            const SizedBox(height: 32),

            // App Name with Shimmer
            const Text(
              'Car Rental',
              style: TextStyle(
                color: Colors.white,
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ).animateShimmer(
              colors: [
                Colors.white.withOpacity(0.5),
                Colors.white,
                Colors.white.withOpacity(0.5),
              ],
            ),

            const SizedBox(height: 16),

            // Tagline with Fade
            Text(
              'Your Journey Starts Here',
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 16,
              ),
            ).animateBottomToTop(
              duration: const Duration(milliseconds: 800),
            ),
          ],
        ),
      ),
    );
  }
}
