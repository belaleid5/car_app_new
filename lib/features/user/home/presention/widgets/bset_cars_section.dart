import 'package:car_app_new/core/common/widgets/smooth_list_view.dart';
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

          success: (cars, hasMore, currentPage) {
            return SliverToBoxAdapter(
              child: SizedBox(
                height: 250,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: SmoothListView.builder(
                    smoothScroll: true,
                    scrollDirection: Axis.horizontal,
                    duration: const Duration(milliseconds: 300),
                    itemCount: cars.length,
                    shrinkWrap: false,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: CarCardWidget(
                          cars: cars[index],
                        ),
                      );
                    },
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
