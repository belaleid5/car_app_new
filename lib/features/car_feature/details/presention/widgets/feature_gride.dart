import 'package:car_app_new/core/common/model/car_features_model.dart';
import 'package:car_app_new/core/common/widgets/grid_view.dart';
import 'package:car_app_new/features/car_feature/details/data/models/mapper/images_icon_mapper.dart';
import 'package:car_app_new/features/car_feature/details/presention/widgets/car_feature_item.dart';
import 'package:flutter/material.dart';

class FeaturesGrid extends StatelessWidget {
  const FeaturesGrid({super.key, required this.features});

  final List<CarFeatureModel> features;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: PaginatedGridView<CarFeatureModel>(
        itemCount: features.length,
        hasMore: false,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        height: 0.85,
        itemBuilder: (context, index) {
          final feature = features[index];
          return CarFeatureItem(
            iconPath: CarFeatureIconMapper.getIcon(feature.name),
            label: feature.name,
            value: feature.value,
          );
        },
      ),
    );
  }
}
