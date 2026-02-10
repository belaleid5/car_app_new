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
    required this.car,
  });
  final CarsModel car;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
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
            padding: EdgeInsets.all(12.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CarName(name: car.name),
                SizedBox(height: 4.h),
                CarRating(rate: car.reviewsAvg),
                SizedBox(height: 4.h),
                CarLocation(
                  address: car.location.name ?? car.location.address,
                ),
                SizedBox(height: 8.h),
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
