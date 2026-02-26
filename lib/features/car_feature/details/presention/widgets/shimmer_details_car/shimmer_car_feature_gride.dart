import 'package:car_app_new/core/common/model/car_features_model.dart';
import 'package:car_app_new/core/common/widgets/grid_view.dart';
import 'package:car_app_new/features/car_feature/details/presention/widgets/shimmer_details_car/shimmer_car_feature_item.dart';
import 'package:flutter/material.dart';

class ShimmerFeaturesGrid extends StatelessWidget {
  const ShimmerFeaturesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: PaginatedGridView<CarFeatureModel>(
        itemCount: 5,
        hasMore: false,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        height: 0.85,
        itemBuilder: (context, index) {
          return const ShimmerCarFeatureItem();
        },
      ),
    );
  }
}
