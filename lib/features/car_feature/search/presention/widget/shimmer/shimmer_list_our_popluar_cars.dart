import 'package:car_app_new/core/common/widgets/smooth_list_view.dart';
import 'package:car_app_new/features/car_feature/search/presention/widget/shimmer/shimmer_card_item_our_popular_cars.dart';
import 'package:flutter/material.dart';

class ShimmerListOurPopularCars extends StatelessWidget {
  const ShimmerListOurPopularCars({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: SmoothListView.separated(
        scrollDirection: Axis.horizontal,
        duration: const Duration(milliseconds: 600),
        itemCount: 5,
        separatorBuilder: (_, __) => const SizedBox(width: 10),
        itemBuilder: (_, __) => const ShimmerCardItemOurPopularCars(),
      ),
    );
  }
}
