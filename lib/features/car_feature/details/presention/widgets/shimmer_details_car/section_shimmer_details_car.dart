import 'package:car_app_new/features/auth_feature/presention/widgets/custom_divider.dart';
import 'package:car_app_new/features/car_feature/details/presention/widgets/shimmer_details_car/content_car_shimmer.dart';
import 'package:flutter/material.dart';

class SectionShimmerDetailsCar extends StatelessWidget {
  const SectionShimmerDetailsCar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      spacing: 10,
      children: [
        ShimmerContentCar(),
        CustomDivider(),
      ],
    );
  }
}
