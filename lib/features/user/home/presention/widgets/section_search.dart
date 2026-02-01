import 'package:car_app_new/core/helper/spacing.dart';
import 'package:car_app_new/features/user/home/presention/widgets/custom_filter_search_icon.dart';
import 'package:car_app_new/features/user/home/presention/widgets/custom_search_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionSearch extends StatefulWidget {
  const SectionSearch({super.key});

  @override
  State<SectionSearch> createState() => _SectionSearchState();
}

class _SectionSearchState extends State<SectionSearch> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.w, vertical: 8.h),
      child: Row(
        children: [
          CustomSearchForm(searchController: _searchController),
          horizontalSpace(12.w),
          const CustomFilterSearchIcon(),
        ],
      ),
    );
  }
}
