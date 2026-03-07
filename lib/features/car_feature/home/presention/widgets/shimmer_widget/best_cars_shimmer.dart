import 'package:car_app_new/features/car_feature/home/presention/widgets/shimmer_widget/car_item_card_shimmer.dart';
import 'package:flutter/material.dart';

class BestCarsShimmer extends StatelessWidget {
  const BestCarsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 237,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 3,
          separatorBuilder: (_, __) => const SizedBox(width: 10),
          itemBuilder: (_, __) => const CarItemCatdShimmer(),
        ),
      ),
    );
  }
}
