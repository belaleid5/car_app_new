import 'package:car_app_new/core/common/widgets/smooth_list_view.dart';
import 'package:car_app_new/core/extensions/custom_shimmer.dart';
import 'package:flutter/material.dart';

class ListShimmerNerestCars extends StatelessWidget {
  const ListShimmerNerestCars({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      height: 130,
      child: SmoothListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (_, __) => ShimmerWidget.rounded(
          width: 390,
          height: 130,
          radius: 16,
        ),
        duration: const Duration(milliseconds: 300),
      ),
    );
  }
}