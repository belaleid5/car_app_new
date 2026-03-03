import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class TextSelector extends StatelessWidget {
  const TextSelector({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
    required this.width,
  });

  final String label;
  final bool isSelected;
  final VoidCallback onTap;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 44,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? context.color.black : Colors.transparent,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          label,
          style: context.textStyle.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: isSelected
                ? context.color.white
                : context.color.textSecondary,
          ),
        ),
      ),
    );
  }
}
