import 'package:car_app_new/features/car_feature/home/presention/manger/bloc_brands/brands_bloc.dart';
import 'package:car_app_new/features/car_feature/home/presention/manger/bloc_brands/brands_state.dart';
import 'package:car_app_new/features/car_feature/search/presention/widget/brand_list_filter.dart';
import 'package:car_app_new/features/car_feature/search/presention/widget/shimmer/brand_tab_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SectionBrandsFilter extends StatelessWidget {
  const SectionBrandsFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BrandsBloc, BrandsState>(
      builder: (context, state) => state.when(
        initial: () => const SizedBox.shrink(),
        loading: () => const BrandsTapShimmer(),
        loaded: (brands) => BrandsListFilter(brands: brands),
        error: (_) => const SizedBox.shrink(),
      ),
    );
  }
}
