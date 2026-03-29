import 'package:car_app_new/core/helper/color_manager.dart';
import 'package:flutter/material.dart';

class ColorOptionTile extends StatelessWidget {
  const ColorOptionTile({
    super.key,
    required this.color,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final Color color;
  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
              border: Border.all(
                color: selected
                    ? HexColorManager.mainAppColor
                    : HexColorManager.colorADADAD,
                width: selected ? 2.5 : 1.5,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: selected ? FontWeight.w600 : FontWeight.w400,
              color: selected
                  ? HexColorManager.color333333
                  : HexColorManager.color727272,
            ),
          ),
        ],
      ),
    );
  }
}