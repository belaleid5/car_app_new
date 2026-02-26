import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class IconTapNavBar extends StatelessWidget {
  const IconTapNavBar({
    required this.onTap,
    required this.icon,
    required this.isSelected,
    super.key,
  });

  final VoidCallback onTap;
  final String icon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        HapticFeedback.lightImpact();
        onTap();
      },
      behavior: HitTestBehavior.opaque,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOutCubic,
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected
              ? context.color.stroke.withValues(alpha: 0.15)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(14),
        ),
        child:
            SvgPicture.asset(
                  icon,
                  height: 24,
                  colorFilter: ColorFilter.mode(
                    isSelected ? context.color.stroke : context.color.icon,
                    BlendMode.srcIn,
                  ),
                )
                .animate(target: isSelected ? 1 : 0)
                .scaleXY(
                  begin: 1,
                  end: 1.2,
                  duration: 300.ms,
                  curve: Curves.elasticOut,
                )
                .shimmer(
                  delay: 100.ms,
                  duration: 400.ms,
                  color: context.color.stroke.withValues(alpha: 0.3),
                )
                .slideY(
                  begin: 0.1,
                  end: 0,
                  duration: 250.ms,
                  curve: Curves.easeOutCubic,
                ),
      ),
    );
  }
}
