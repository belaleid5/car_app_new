// car_feature_item.dart
import 'package:car_app_new/core/app/theme/my_colors.dart';
import 'package:car_app_new/core/common/widgets/custom_circular_icon.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/helper/spacing.dart';
import 'package:flutter/material.dart';

class CarFeatureItem extends StatelessWidget {
  const CarFeatureItem({
    super.key,
    required this.iconPath,
    required this.label,
    required this.value,
  });

  final String iconPath;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 10, bottom: 10),
      decoration: BoxDecoration(
        color: context.colors.stroke,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomCircularIcon(iconPath: iconPath),

          verticalSpace(16),

          Text(
            label,
            style: context.textStyle.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: context.colors.textSecondary,
            ),
          ),

          Text(
            value,
            style: context.textStyle.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
