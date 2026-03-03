import 'package:car_app_new/core/common/widgets/custom_cars_details_sliver_app_bar.dart';
import 'package:car_app_new/core/helper/spacing.dart';
import 'package:car_app_new/features/car_feature/home/presention/widgets/section_search.dart';
import 'package:car_app_new/features/car_feature/home/presention/widgets/title_section_and_view_all_text.dart';
import 'package:car_app_new/features/car_feature/search/presention/manger/filter_search_bloc.dart';
import 'package:car_app_new/features/car_feature/search/presention/manger/filter_search_event.dart';
import 'package:car_app_new/features/car_feature/search/presention/refactor/filter_bottom_sheet_search.dart';
import 'package:car_app_new/features/car_feature/search/presention/widget/section_brands_filter.dart';
import 'package:car_app_new/features/car_feature/search/presention/widget/section_our_popluar_cars.dart';
import 'package:car_app_new/features/car_feature/search/presention/widget/section_recommendtion_for_you.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchFilterBody extends StatefulWidget {
  const SearchFilterBody({super.key});

  @override
  State<SearchFilterBody> createState() => _SearchFilterBodyState();
}

class _SearchFilterBodyState extends State<SearchFilterBody> {
  @override
  void initState() {
    super.initState();
    context.read<FilterSearchBloc>().add(
      const FilterSearchEvent.search(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const CustomCarsDetailsSliverAppBar(title: 'Search'),
        SliverToBoxAdapter(child: verticalSpace(10)),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          sliver: SliverToBoxAdapter(
            child: SectionSearch(
              onTap: () => FilterBottomSheetSearch.show(context),
            ),
          ),
        ),
        SliverToBoxAdapter(child: verticalSpace(20)),
        const SliverToBoxAdapter(child: SectionBrandsFilter()),
        SliverToBoxAdapter(child: verticalSpace(20)),
        const SliverToBoxAdapter(
          child: TitleSectionAndViewAllText(title: 'Recommended For You'),
        ),
        SliverToBoxAdapter(child: verticalSpace(10)),
        const SliverToBoxAdapter(child: SectionRecommendtionForYou()),
        SliverToBoxAdapter(child: verticalSpace(10)),
        const SliverToBoxAdapter(
          child: TitleSectionAndViewAllText(title: 'Our Popular Cars'),
        ),
        const SliverToBoxAdapter(child: SectionOurPopularCars()),
      ],
    );
  }
}
