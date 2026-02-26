import 'package:car_app_new/features/car_feature/details/data/models/car_details_model.dart';
import 'package:car_app_new/features/car_feature/details/presention/widgets/dec_car.dart';
import 'package:car_app_new/features/car_feature/home/presention/widgets/car-ratig.dart';
import 'package:flutter/material.dart';

class SectionRateCarDetails extends StatelessWidget {
  const SectionRateCarDetails({
    super.key,
    required this.car,
  });

  final CarDetailsModel car;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: CarRating(rate: car.averageRate.toDouble()),
        ),
        DescriptionTitle(des: '(${car.reviewsCount}+Reviews)'),
      ],
    );
  }
}
