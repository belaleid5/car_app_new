import 'package:car_app_new/core/extensions/custom_shimmer.dart';
import 'package:flutter/material.dart';

class BrandsTapShimmer extends StatelessWidget {
  const BrandsTapShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 4),
        itemCount: 5,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (_, __) => ShimmerWidget.rounded(
          width: 80,
          height: 44,
          radius: 100,
        ),
      ),
    );
  }
}
