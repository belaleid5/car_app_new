import 'package:flutter/material.dart';

class CarouselDotIndicator extends StatelessWidget {
  const CarouselDotIndicator({
    super.key,
    required this.count,
    required this.currentIndex,
    this.activeColor,
    this.inactiveColor,
    this.dotHeight = 8,
    this.activeDotWidth = 28,
    this.inactiveDotWidth = 8,
    this.spacing = 6,
  });

  final int count;
  final int currentIndex;
  final Color? activeColor;
  final Color? inactiveColor;
  final double dotHeight;
  final double activeDotWidth;
  final double inactiveDotWidth;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    final active = activeColor ?? Theme.of(context).colorScheme.primary;
    final inactive = inactiveColor ?? active.withValues(alpha: 0.25);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(count, (i) {
        final isActive = i == currentIndex;
       return AnimatedContainer(
  duration: const Duration(milliseconds: 350),
  curve: Curves.easeOutCubic,
  margin: EdgeInsets.symmetric(horizontal: spacing / 2),
  width: dotHeight, 
  height: dotHeight,
  decoration: BoxDecoration(
    color: isActive ? active : inactive,
    borderRadius: BorderRadius.circular(dotHeight / 2),
  ),
);
      }),
    );
  }
}