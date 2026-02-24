import 'package:car_app_new/core/helper/spacing.dart';
import 'package:car_app_new/features/car_feature/home/presention/widgets/custom_filter_search_icon.dart';
import 'package:car_app_new/features/car_feature/home/presention/widgets/custom_search_form.dart';
import 'package:flutter/material.dart';

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
      margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 8),
      child: Row(
        children: [
          CustomSearchForm(searchController: _searchController),
          horizontalSpace(12),
          const CustomFilterSearchIcon(),
        ],
      ),
    );
  }
}
