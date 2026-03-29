import 'package:car_app_new/core/extensions/custom_shimmer.dart';
import 'package:flutter/material.dart';

class CarItemCatdShimmer extends StatelessWidget {
  const CarItemCatdShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 186,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShimmerWidget.card(
            height: 100,
            width: 186,
          ),

          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShimmerWidget.text(width: 120, height: 14),
                const SizedBox(height: 8),

                //
                Row(
                  children: [
                    ShimmerWidget.text(width: 30, height: 12),
                    const SizedBox(width: 6),
                    ShimmerWidget.square(size: 16, radius: 4),
                  ],
                ),
                const SizedBox(height: 8),

                // Location
                Row(
                  children: [
                    ShimmerWidget.square(size: 14, radius: 4),
                    const SizedBox(width: 6),
                    ShimmerWidget.text(width: 100, height: 12),
                  ],
                ),
                const SizedBox(height: 12),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ShimmerWidget.square(size: 14, radius: 4),
                        const SizedBox(width: 4),
                        ShimmerWidget.text(width: 45, height: 12),
                      ],
                    ),
                    Row(
                      children: [
                        ShimmerWidget.square(size: 14, radius: 4),
                        const SizedBox(width: 4),
                        ShimmerWidget.text(width: 50, height: 12),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
