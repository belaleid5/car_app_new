// features/onboarding/presentation/pages/onboarding_main_page.dart
import 'package:car_app_new/core/common/widgets/custom_button.dart';
import 'package:car_app_new/core/extensions/animation_extensions.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/routes/routes_names.dart';
import 'package:car_app_new/core/app/theme/my_colors.dart';
import 'package:car_app_new/features/onBording/presention/pages/on_boarding_oage_tow.dart';
import 'package:car_app_new/features/onBording/presention/pages/on_boarding_page_one.dart';
import 'package:car_app_new/features/onBording/presention/widgets/custom_indicator.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatefulWidget {
  const OnBoardingPageView({super.key});

  @override
  State<OnBoardingPageView> createState() => _OnBoardingPageViewState();
}

class _OnBoardingPageViewState extends State<OnBoardingPageView> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  void _nextPage() {
    if (_currentPage < 1) {
      _pageController.animateToPage(
        _currentPage + 1,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      context.pushReplacementNamed(AppRoutesNames.loginRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: _onPageChanged,
            children: const [
              OnBoardingPageOne(),
              OnBoardingPageTwo(),
            ],
          ),
      
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    Center(
                      child: CustomOnBoardingIndicator(
                        currentPage: _currentPage,
                        totalPages: 2,
                        activeColor: MyColors.light.white,
                        inactiveColor: MyColors.light.icon,
                      ).animateScaleNFadeHorizontal(
                        duration: const Duration(milliseconds: 600),
                      ),
                    ),
      
                    SizedBox(height: 25),
      
                    CustomButton(
                      text: _currentPage == 1 ? 'Get Started' : 'Next',
                      onPressed: _nextPage,
                      backgroundColor: MyColors.light.white,
                      textColor: MyColors.light.black,
                    )
                        .animateBottomToTop(
                          duration: const Duration(milliseconds: 800),
                        )
                        .animateShimmer(
                          duration: const Duration(milliseconds: 2000),
                          colors: [
                            MyColors.light.white.withOpacity(0.8),
                            MyColors.light.white,
                            MyColors.light.white.withOpacity(0.8),
                          ],
                        ),
      
                    SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
