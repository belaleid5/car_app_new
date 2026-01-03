import 'package:car_app_new/features/auth/presention/widgets/custom_divider.dart';
import 'package:car_app_new/features/user/home/presention/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 24.sp,left:24.sp,top:20.sp),
      child: const CustomScrollView(
        shrinkWrap: true,
        slivers: [
          HomeAppBar(),
          SliverToBoxAdapter(child: CustomDivider(),),
          SliverToBoxAdapter(child: SectionSearch(),)

        ],
      ),
    );
  }
}


class SectionSearch extends StatelessWidget {
  const SectionSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      );
  }
}
