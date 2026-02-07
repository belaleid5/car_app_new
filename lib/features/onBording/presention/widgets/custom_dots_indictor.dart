import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDotIndicator extends StatelessWidget {

  const CustomDotIndicator({
    super.key,
    required this.currentPage,
    required this.totalPages,
    this.activeColor = Colors.white,
    this.inactiveColor = Colors.grey,
    this.spacing = 8.0,
    this.activeDotSize = 10.0,
    this.inactiveDotSize = 8.0,
  });
  final int currentPage;
  final int totalPages;
  final Color activeColor;
  final Color inactiveColor;
  final double spacing;
  final double activeDotSize;
  final double inactiveDotSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        totalPages,
        (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          width: currentPage == index ? activeDotSize.w : inactiveDotSize.w,
          height: currentPage == index ? activeDotSize.h : inactiveDotSize.h,
          margin: EdgeInsets.symmetric(horizontal: (spacing / 2).w),
          decoration: BoxDecoration(
            color: currentPage == index ? activeColor : inactiveColor.withOpacity(0.5),
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
