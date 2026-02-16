// features/onboarding/presentation/widgets/custom_page_indicator.dart
import 'package:flutter/material.dart';

class CustomOnBoardingIndicator extends StatelessWidget {
  const CustomOnBoardingIndicator({
    required this.currentPage,
    required this.totalPages,
    super.key,
    this.activeColor = Colors.white,
    this.inactiveColor = Colors.grey,
    this.spacing = 8.0,
    this.dotWidth = 40.0,
    this.dotHeight = 4.0,
  });
  final int currentPage;
  final int totalPages;
  final Color activeColor;
  final Color inactiveColor;
  final double spacing;
  final double dotWidth;
  final double dotHeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        totalPages,
        (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          width: currentPage == index ? dotWidth : (dotWidth / 2),
          height: dotHeight,
          margin: EdgeInsets.symmetric(horizontal: (spacing / 2)),
          decoration: BoxDecoration(
            color: currentPage == index
                ? activeColor
                : inactiveColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ),
    );
  }
}
