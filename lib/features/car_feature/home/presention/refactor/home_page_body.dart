import 'package:car_app_new/core/common/animations/animation_do.dart';
import 'package:car_app_new/core/helper/spacing.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/custom_divider.dart';
import 'package:car_app_new/features/car_feature/home/presention/widgets/bset_cars_section.dart';
import 'package:car_app_new/features/car_feature/home/presention/widgets/home_app_bar.dart';
import 'package:car_app_new/features/car_feature/home/presention/widgets/nerest_cars_section.dart';
import 'package:car_app_new/features/car_feature/home/presention/widgets/section_brands.dart';
import 'package:car_app_new/features/car_feature/home/presention/widgets/section_search.dart';
import 'package:car_app_new/features/car_feature/home/presention/widgets/title_section_and_view_all_text.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverPadding(
          padding: EdgeInsets.fromLTRB(24, 20, 24, 0),
          sliver: HomeAppBar(),
        ),

        const SliverToBoxAdapter(child: CustomDivider()),

        SliverToBoxAdapter(child: verticalSpace(10)),

        const SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          sliver: SliverToBoxAdapter(
            child: CustomFadeInDown(
              duration: 700,
              child: SectionSearch(),
            ),
          ),
        ),

        SliverToBoxAdapter(child: verticalSpace(20)),

        const SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          sliver: SliverToBoxAdapter(
            child: CustomFadeInLeft(
              duration: 800,
              child: SectionBrands(),
            ),
          ),
        ),

        SliverToBoxAdapter(child: verticalSpace(10)),

        const SliverToBoxAdapter(
          child: CustomFadeInRight(
            duration: 900,
            child: TitleSectionAndViewAllText(title: 'Best Cars'),
          ),
        ),

        SliverToBoxAdapter(child: verticalSpace(10)),

        const BestCarsSection(),

        SliverToBoxAdapter(child: verticalSpace(10)),

        const SliverToBoxAdapter(
          child: CustomFadeInLeft(
            duration: 900,
            child: TitleSectionAndViewAllText(title: 'Nearby'),
          ),
        ),

        const SliverToBoxAdapter(child: NerestCarsSection()),
      ],
    );
  }
}
