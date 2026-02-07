import 'package:car_app_new/features/user/home/data/models/cars_model.dart';
import 'package:car_app_new/features/user/home/presention/widgets/car-ratig.dart';
import 'package:car_app_new/features/user/home/presention/widgets/car_fotter.dart';
import 'package:car_app_new/features/user/home/presention/widgets/car_image.dart';
import 'package:car_app_new/features/user/home/presention/widgets/car_location.dart';
import 'package:car_app_new/features/user/home/presention/widgets/car_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarCardWidget extends StatelessWidget {
  const CarCardWidget({
    super.key,
    required this.car,
  });
  final CarsModel car;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220.sp,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarImage(image: car.firstImage),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CarName(name: car.name),
                const SizedBox(height: 6),
                CarRating(rate: car.reviewsAvg),
                const SizedBox(height: 6),
                CarLocation(
                  address: car.location.name ?? car.location.address,
                ),
                const SizedBox(height: 12),
                CarFooter(
                  seats: car.seatingCapacity,
                  price: car.dailyRent ?? car.price,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
