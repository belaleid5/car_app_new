import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/helper/spacing.dart' show verticalSpace;
import 'package:car_app_new/features/user/home/data/models/cars_model.dart';
import 'package:car_app_new/features/user/home/presention/widgets/car-ratig.dart';
import 'package:car_app_new/features/user/home/presention/widgets/car_fotter.dart';
import 'package:car_app_new/features/user/home/presention/widgets/car_image.dart';
import 'package:car_app_new/features/user/home/presention/widgets/car_location.dart';
import 'package:car_app_new/features/user/home/presention/widgets/car_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarCardWidget extends StatelessWidget {
  const CarCardWidget({
    super.key,
    required this.cars,
  });

  final CarsModel cars;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow:  [
          BoxShadow(
            color: context.color.black.withValues(alpha: 0.2),
            blurRadius: 8,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarImage(image: cars.firstImage), // ✅ firstImage
          Padding(
            padding: EdgeInsets.all(12.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CarName(name: cars.name),
                verticalSpace(4.h),

                CarRating(rate: cars.reviewsAvg),
                verticalSpace(4.h),

                CarLocation(
                  address: cars.location.name ?? '',
                ),
                verticalSpace(8.h),
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
