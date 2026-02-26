import 'package:car_app_new/core/app/theme/my_colors.dart';
import 'package:car_app_new/features/car_feature/details/presention/refactor/cars_details_body.dart';
import 'package:flutter/material.dart';

class CarsDetailsScreen extends StatelessWidget {
  const CarsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.white,
      body: const CarsDetailsBody(),
    );
  }
}
