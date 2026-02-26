import 'package:car_app_new/core/app/theme/my_colors.dart';
import 'package:car_app_new/core/extensions/custom_shimmer.dart';
import 'package:car_app_new/features/car_feature/home/presention/widgets/shimmer_widget/rate_widget_shimmer.dart';
import 'package:flutter/material.dart';

class ShimmerReviewCard extends StatelessWidget {
  const ShimmerReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        width: 262,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          border: Border.all(color: context.colors.stroke),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          spacing: 7,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              spacing: 8,
              children: [
                ShimmerWidget.circular(
                  size: 32,
                ),
                ShimmerWidget.text(width: 100),

                const RateWidgetShimmer(),
              ],
            ),
            ShimmerWidget.text(baseColor: context.colors.stroke, width: 100),
          ],
        ),
      ),
    );
  }
}
