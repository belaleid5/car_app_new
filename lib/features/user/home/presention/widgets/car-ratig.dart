import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarRating extends StatelessWidget {
  const CarRating({super.key, required this.rate});
  final double rate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          rate.toStringAsFixed(1),
          style:  TextStyle(fontSize: 13.sp),
        ),

         SizedBox(width: 4.w),
         Icon(Icons.star, size: 16.h, color: Colors.amber),
      ],
    );
  }
}
