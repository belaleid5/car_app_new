import 'package:car_app_new/core/app/theme/my_colors.dart';
import 'package:car_app_new/core/common/animations/animation_do.dart';
import 'package:car_app_new/core/common/widgets/custom_cars_details_sliver_app_bar.dart';
import 'package:car_app_new/core/common/widgets/custom_title_section.dart';
import 'package:car_app_new/core/helper/spacing.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/custom_divider.dart';
import 'package:car_app_new/features/car_feature/details/presention/widgets/book_now_button.dart';
import 'package:car_app_new/features/car_feature/details/presention/widgets/car_feature_gride.dart';
import 'package:car_app_new/features/car_feature/details/presention/widgets/car_review.dart';
import 'package:car_app_new/features/car_feature/details/presention/widgets/information_owner.dart';
import 'package:car_app_new/features/car_feature/details/presention/widgets/secion_content_car.dart';
import 'package:car_app_new/features/car_feature/details/presention/widgets/section_carousel_car_image.dart';
import 'package:car_app_new/features/car_feature/home/presention/widgets/title_section_and_view_all_text.dart';
import 'package:flutter/material.dart';

class CarsDetailsBody extends StatelessWidget {
  const CarsDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const CustomCarsDetailsSliverAppBar(
          title: 'Details Car',
        ),

        SliverToBoxAdapter(
          child: CustomFadeInDown(
            duration: 600,
            child: ColoredBox(
              color: context.colors.secondary,
              child: const SectionCarouselCarImage(),
            ),
          ),
        ),

        SliverToBoxAdapter(child: verticalSpace(16)),

        const SliverToBoxAdapter(
          child: CustomFadeInUp(
            duration: 500,
            child: SectionContentCar(),
          ),
        ),

        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: CustomDivider(),
          ),
        ),

        SliverToBoxAdapter(child: verticalSpace(12)),

        const SliverToBoxAdapter(
          child: CustomFadeInLeft(
            duration: 500,
            child: InformationOwner(),
          ),
        ),

        SliverToBoxAdapter(child: verticalSpace(12)),

        const SliverToBoxAdapter(
          child: CustomFadeInLeft(
            duration: 500,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: CstomTitleSection(title: 'Car Features'),
            ),
          ),
        ),

        const SliverToBoxAdapter(
          child: CustomFadeInUp(
            duration: 600,
            child: CarFeaturesGrid(),
          ),
        ),

        SliverToBoxAdapter(child: verticalSpace(12)),

        const SliverToBoxAdapter(
          child: CustomFadeInLeft(
            duration: 500,
            child: TitleSectionAndViewAllText(title: 'Reviews(20)'),
          ),
        ),

        SliverToBoxAdapter(child: verticalSpace(5)),

        const SliverToBoxAdapter(
          child: CustomFadeInUp(
            duration: 700,
            child: SectionCarReview(),
          ),
        ),

        const SliverToBoxAdapter(
          child: CustomFadeInUp(
            duration: 800,
            child: BookNowButton(),
          ),
        ),
      ],
    );
  }
}
