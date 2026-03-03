import 'package:car_app_new/core/common/widgets/smooth_list_view.dart';
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
        child: SmoothListView.builder(
          scrollDirection: Axis.horizontal,
          duration: const Duration(milliseconds: 300),
          itemCount: 5,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return const CarItemCatdShimmer();
          },
        ),
      ),
    );
  }
}
