import 'package:car_app_new/features/car_feature/search/presention/manger/filter_search_bloc.dart';
import 'package:car_app_new/features/car_feature/search/presention/manger/filter_search_state.dart';
import 'package:car_app_new/features/car_feature/search/presention/widget/custom_grid_view_recommendtion_car_item.dart';
import 'package:car_app_new/features/car_feature/search/presention/widget/empty_view.dart';
import 'package:car_app_new/features/car_feature/search/presention/widget/shimmer/section_recommendtion_for_you_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SectionRecommendtionForYou extends StatelessWidget {
  const SectionRecommendtionForYou({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterSearchBloc, FilterSearchState>(
      builder: (context, state) => state.when(
        initial: (_) => const SizedBox.shrink(),
        loading: (_) => const SectionRecommendetionForYouShimmer(),
        success: (cars, draft, currentPage, lastPage, total, hasMore) =>
            cars.isEmpty
            ? const EmptyView()
            : CustomGridViewRecommendtionCarItem(
                cars: cars,
                hasMore: hasMore,
              ),
        error: (message, draft, previousCars) => previousCars != null
            ? CustomGridViewRecommendtionCarItem(cars: previousCars)
            : const EmptyView(),
      ),
    );
  }
}
