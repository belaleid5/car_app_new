import 'package:car_app_new/features/car_feature/details/data/models/car_details_model.dart';
import 'package:car_app_new/features/car_feature/details/presention/widgets/dec_car.dart';
import 'package:car_app_new/features/car_feature/details/presention/widgets/name_car_details.dart';
import 'package:flutter/material.dart';

class NameAndDescriptionCars extends StatelessWidget {
  const NameAndDescriptionCars({
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
        NameDetailsCar(nameCar: car.name),
        SizedBox(
          width: 250,
          child: DescriptionTitle(des: car.description),
        ),
      ],
    );
  }
}