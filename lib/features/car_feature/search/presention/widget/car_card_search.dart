import 'package:car_app_new/core/common/model/cars_model.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/helper/navigator_extenstion.dart';
import 'package:car_app_new/core/helper/spacing.dart';
import 'package:car_app_new/core/routes/routes_names.dart';
import 'package:car_app_new/features/car_feature/home/presention/widgets/car-ratig.dart';
import 'package:car_app_new/features/car_feature/home/presention/widgets/car_fotter.dart';
import 'package:car_app_new/features/car_feature/home/presention/widgets/car_image.dart';
import 'package:car_app_new/features/car_feature/home/presention/widgets/car_location.dart';
import 'package:car_app_new/features/car_feature/home/presention/widgets/car_name.dart';
import 'package:flutter/material.dart';

class CarCardSearch extends StatelessWidget {
  const CarCardSearch({
    super.key,
    required this.cars,
  });

  final CarsModel cars;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 186,
      child: Card(
        color: context.color.background,
        elevation: 4,
        shadowColor: context.color.black.withValues(alpha: 0.2),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 0.4,
            color: context.color.black.withValues(alpha: 0.2),
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                context.pushNamed(
                  AppRoutesNames.carsDetailsRoute,
                  arguments: cars.id.toString(),
                );
              },
              child: CarImage(image: cars.firstImage),
            ),

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
      ),
    );
  }
}
