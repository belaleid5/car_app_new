import 'package:car_app_new/core/helper/spacing.dart' show verticalSpace;
import 'package:car_app_new/features/user/home/data/models/cars_model.dart';
import 'package:car_app_new/features/user/home/presention/widgets/car-ratig.dart';
import 'package:car_app_new/features/user/home/presention/widgets/car_fotter.dart';
import 'package:car_app_new/features/user/home/presention/widgets/car_image.dart';
import 'package:car_app_new/features/user/home/presention/widgets/car_location.dart';
import 'package:car_app_new/features/user/home/presention/widgets/car_name.dart';
import 'package:flutter/material.dart';

class CarCardWidget extends StatelessWidget {
  const CarCardWidget({
    super.key,
    required this.cars,
  });

  final CarsModel cars;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            blurRadius: 8,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarImage(image: cars.firstImage),

          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              spacing: 6,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CarName(name: cars.name),

                CarRating(rate: cars.reviewsAvg),

                CarLocation(
                  address: cars.location.name ?? '',
                ),

                verticalSpace(4),

                CarFooter(
                  seats: cars.seatingCapacity,
                  price: cars.dailyRent ?? cars.price,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
