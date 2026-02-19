import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
      onTap: onTap,
      child: SvgPicture.asset(
        icon,
        color: isSelected ? context.color.button : Colors.grey,
        height: 25,
      ).animate(target: isSelected ? 1 : 0).scaleXY(end: 1.2),
    );
  }
}