import 'package:car_app_new/core/common/widgets/custom_image.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/styles/app_images.dart';
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
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          empty: EmptyView.new,
          loading: SectionRecommendetionForYouShimmer.new,
          loadingMore: (cars) => CustomGridViewRecommendtionCarItem(
            cars: cars,
            hasMore: true,
          ),
          success: (cars, currentPage, lastPage, total, hasMore) => cars.isEmpty
              ? const EmptyView()
              : CustomGridViewRecommendtionCarItem(
                  cars: cars,
                  hasMore: hasMore,
                ),
          error: (message, previousCars) => previousCars != null
              ? CustomGridViewRecommendtionCarItem(cars: previousCars)
              : const EmptyView(),
        );
      },
    );
  }
}


