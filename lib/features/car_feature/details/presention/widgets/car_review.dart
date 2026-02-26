import 'package:car_app_new/features/car_feature/details/presention/manger/bloc/cars_details_bloc.dart';
import 'package:car_app_new/features/car_feature/details/presention/manger/bloc/cars_details_states.dart';
import 'package:car_app_new/features/car_feature/details/presention/widgets/list_card_user_review.dart';
import 'package:car_app_new/features/car_feature/details/presention/widgets/shimmer_details_car/shimmer_list_card_user_review.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SectionCarReview extends StatelessWidget {
  const SectionCarReview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CarDetailsBloc, CarDetailsState>(
      buildWhen: (previous, current) => current.maybeWhen(
        success: (_) => true,
        orElse: () => false,
      ),
      builder: (context, state) {
        return state.when(
          initial: () => const ShimmerListCardUserReview(),
          loading: () => const ShimmerListCardUserReview(),
          error: (message) => const SizedBox(),
          success: (car) {
            return ListCardUserReview(
              reviews: car.reviews,
            );
          },
        );
      },
    );
  }
}
