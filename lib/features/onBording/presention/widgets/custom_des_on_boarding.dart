import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDescriptionPageOnBoarding extends StatelessWidget {
  const CustomDescriptionPageOnBoarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Discover your next adventure with Qent, we're here to "
      'provide you with a seamless car rental experience. '
      "Let's get started on your journey.",
      style: TextStyle(
        color: Colors.white.withOpacity(0.8),
        fontSize: 14.sp,
        height: 1.5,
      ),
    );
  }
}
