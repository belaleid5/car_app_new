import 'package:car_app_new/core/common/widgets/grid_view.dart';
import 'package:car_app_new/features/user/home/data/models/cars_model.dart';
import 'package:car_app_new/features/user/home/presention/manger/bloc/bestcars_bloc.dart';
import 'package:car_app_new/features/user/home/presention/manger/bloc/bestcars_state.dart';
import 'package:car_app_new/features/user/home/presention/widgets/shimmer_widget/best_cars_shimmer.dart';
import 'package:car_app_new/features/user/home/presention/widgets/car_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestCarsSection extends StatelessWidget {
  const BestCarsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestCarsBloc, BestCarsState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SliverToBoxAdapter(
            child: SizedBox.shrink(),
          ),

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
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: PaginatedGridView<CarsModel>(
                      height: 1.8.h,
                      itemCount: cars.length,
                      hasMore: hasMore,
                      crossAxisCount: 2,
                      mainAxisSpacing: 12.h,
                      crossAxisSpacing: 8.w,
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
