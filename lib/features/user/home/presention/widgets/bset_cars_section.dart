import 'package:car_app_new/core/common/widgets/grid_view.dart';
import 'package:car_app_new/core/common/model/cars_model.dart';
import 'package:car_app_new/features/user/home/presention/manger/bloc/bestcars_bloc.dart';
import 'package:car_app_new/features/user/home/presention/manger/bloc/bestcars_state.dart';
import 'package:car_app_new/features/user/home/presention/widgets/car_card_widget.dart';
import 'package:car_app_new/features/user/home/presention/widgets/shimmer_widget/best_cars_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestCarsSection extends StatelessWidget {
  const BestCarsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestCarsBloc, BestCarsState>(
      builder: (context, state) {
        return state.when(
          loading: () => const SliverToBoxAdapter(
            child: BestCarsShimmer(),
          ),

          error: (message) => SliverToBoxAdapter(
            child: Center(child: Text('Error: $message')),
          ),

          success:
              (
                cars,
                hasMore,
                currentPage,
              ) {
                return SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: PaginatedGridView<CarsModel>(
                      height: 1.3,
                      itemCount: cars.length,
                      hasMore: false,
                      crossAxisCount: 2,
                      mainAxisSpacing: 12,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return CarCardWidget(cars: cars[index]);
                      },
                    ),
                  ),
                );
              },
        );
      },
    );
  }
}
