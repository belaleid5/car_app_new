import 'package:car_app_new/features/car/home/presention/manger/nerest_cars_bloc/bloc/nerest_car_bloc.dart';
import 'package:car_app_new/features/car/home/presention/manger/nerest_cars_bloc/bloc/nerest_car_state.dart';
import 'package:car_app_new/features/car/home/presention/widgets/list_nerst_cars.dart';
import 'package:car_app_new/features/car/home/presention/widgets/shimmer_widget/list_nerest_cars_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NerestCarsSection extends StatelessWidget {
  const NerestCarsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NerestCarsBloc, NerestCarsState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: ListShimmerNerestCars.new,
          success: (cars, hasMore, currentPage) {
            return ListNerestCars(cars: cars);
          },
          error: (message, previousCars) {
            if (previousCars != null && previousCars.isNotEmpty) {
              return ListNerestCars(cars: previousCars);
            }
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
