import 'package:car_app_new/features/car_feature/details/presention/manger/bloc/cars_details_bloc.dart';
import 'package:car_app_new/features/car_feature/details/presention/manger/bloc/cars_details_states.dart';
import 'package:car_app_new/features/car_feature/details/presention/widgets/content_car.dart';
import 'package:car_app_new/features/car_feature/details/presention/widgets/shimmer_details_car/content_car_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SectionContentCar extends StatelessWidget {
  const SectionContentCar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CarDetailsBloc, CarDetailsState>(
      builder: (context, state) {
        return state.when(
          success: (car) => ContentCar(
            car: car,
          ),
          initial: ShimmerContentCar.new,
          loading: ShimmerContentCar.new,
          error: Text.new,
        );
      },
    );
  }
}








