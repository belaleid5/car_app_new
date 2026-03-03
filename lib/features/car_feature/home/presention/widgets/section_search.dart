import 'package:car_app_new/core/helper/spacing.dart';
import 'package:car_app_new/features/car_feature/home/presention/widgets/custom_filter_search_icon.dart';
import 'package:car_app_new/features/car_feature/home/presention/widgets/custom_search_form.dart';
import 'package:car_app_new/features/car_feature/search/presention/manger/filter_search_bloc.dart';
import 'package:car_app_new/features/car_feature/search/presention/manger/filter_search_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class SectionSearch extends StatefulWidget {
  const SectionSearch({super.key, this.onTap});

  final void Function()? onTap;

  @override
  State<SectionSearch> createState() => _SectionSearchState();
}

class _SectionSearchState extends State<SectionSearch> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);
  }

  void _onSearchChanged() {
    context.read<FilterSearchBloc>().add(
      FilterSearchEvent.search(
        nameCar: _searchController.text.isEmpty ? null : _searchController.text,
      ),
    );
  }

  @override
  void dispose() {
    _searchController
      ..removeListener(_onSearchChanged)
      ..dispose();
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
          GestureDetector(
            onTap: () {
              print('icon tapped ✅');
              widget.onTap?.call();
            },
            child: const CustomFilterSearchIcon(),
          ),
        ],
      ),
    );
  }
}