import 'package:car_app_new/core/helper/spacing.dart';
import 'package:car_app_new/features/auth/presention/widgets/custom_divider.dart';
import 'package:car_app_new/features/user/home/presention/widgets/home_app_bar.dart';
import 'package:car_app_new/features/user/home/presention/widgets/section_brands.dart';
import 'package:car_app_new/features/user/home/presention/widgets/section_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        SliverPadding(
          padding: EdgeInsets.fromLTRB(24.sp, 20.sp, 24.sp, 0),
          sliver: const HomeAppBar(),
        ),
        const SliverToBoxAdapter(
          child: Expanded(child: CustomDivider()),
        ),
        SliverToBoxAdapter(
          child: verticalSpace(10.h),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp),
          sliver: const SliverToBoxAdapter(
            child: SectionSearch(),
          ),
        ),
        SliverToBoxAdapter(
          child: verticalSpace(20.h),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 24.sp),
          sliver: const SliverToBoxAdapter(
            child: SectionBrands(),
          ),
        ),
      ],
    );
  }
}
