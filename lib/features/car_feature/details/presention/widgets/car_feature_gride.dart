// car_features_grid.dart
import 'package:car_app_new/features/car_feature/details/presention/manger/bloc/cars_details_bloc.dart';
import 'package:car_app_new/features/car_feature/details/presention/manger/bloc/cars_details_states.dart';
import 'package:car_app_new/features/car_feature/details/presention/widgets/feature_gride.dart';
import 'package:car_app_new/features/car_feature/details/presention/widgets/shimmer_details_car/shimmer_car_feature_gride.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarFeaturesGrid extends StatelessWidget {
  const CarFeaturesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CarDetailsBloc, CarDetailsState>(
      buildWhen: (previous, current) => current.maybeWhen(
        success: (_) => true,
        orElse: () => false,
        loading: () => true,
      ),
      builder: (context, state) {
        return state.when(
          loading: () => const ShimmerFeaturesGrid(),
          error: (error) => const SizedBox(),
          initial: () => const ShimmerFeaturesGrid(),
          success: (car) => FeaturesGrid(features: car.carFeatures),
        );
      },
    );
  }
}
