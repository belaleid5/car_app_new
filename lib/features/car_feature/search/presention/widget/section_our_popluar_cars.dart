import 'package:car_app_new/features/car_feature/search/presention/manger/filter_search_bloc.dart';
import 'package:car_app_new/features/car_feature/search/presention/manger/filter_search_state.dart';
import 'package:car_app_new/features/car_feature/search/presention/widget/empty_view.dart';
import 'package:car_app_new/features/car_feature/search/presention/widget/list_our_poplar_cars.dart';
import 'package:car_app_new/features/car_feature/search/presention/widget/shimmer/shimmer_list_our_popluar_cars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SectionOurPopularCars extends StatelessWidget {
  const SectionOurPopularCars({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterSearchBloc, FilterSearchState>(
      builder: (context, state) {
        return state.when(
          initial: () => const ShimmerListOurPopularCars(),
          empty: EmptyView.new,
          loading: () => const ShimmerListOurPopularCars(), 
          loadingMore: (cars) => ListOurPopularCars(cars: cars),
          success: (cars, currentPage, lastPage, total, hasMore) => cars.isEmpty
              ? const  EmptyView()
              : ListOurPopularCars(cars: cars),
          error: (message, previousCars) => previousCars != null
              ? ListOurPopularCars(cars: previousCars)
              : const  EmptyView(),
        );
      },
    );
  }
}
