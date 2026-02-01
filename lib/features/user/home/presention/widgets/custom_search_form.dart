import 'package:car_app_new/core/common/widgets/adabtive_text_form_field.dart';
import 'package:car_app_new/core/styles/theme/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchForm extends StatelessWidget {
  const CustomSearchForm({
    required TextEditingController searchController, super.key,
  }) : _searchController = searchController;

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AdaptiveInputField(
        context: context,
        controller: _searchController,
        hintText: 'Search your dream car....',
        textCapitalization: TextCapitalization.none,
        prefix: Padding(
          padding: EdgeInsets.all(12.w),
          child: Icon(
            Icons.search,
            color: MyColors.light.textSecondary,
            size: 24.sp,
          ),
        ),
        maxLines: 1,
      ),
    );
  }
}
