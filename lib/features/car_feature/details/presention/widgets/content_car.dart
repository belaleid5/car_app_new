import 'package:car_app_new/core/app/theme/my_colors.dart';
import 'package:car_app_new/features/car_feature/details/data/models/car_details_model.dart';
import 'package:car_app_new/features/car_feature/details/presention/widgets/name_and_descriptin_cars.dart';
import 'package:car_app_new/features/car_feature/details/presention/widgets/section_rate_car_details.dart';
import 'package:flutter/material.dart';

class ContentCar extends StatelessWidget {
  const ContentCar({
    super.key,
    required this.car,
  });
  final CarDetailsModel car;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Row(
        children: [
          NameAndDescriptionCars(car: car),
          const Spacer(),
          SectionRateCarDetails(car: car),
        ],
      ),
    );
  }
}
