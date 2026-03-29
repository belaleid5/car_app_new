import 'package:car_app_new/core/common/widgets/custom_title_section.dart';
import 'package:car_app_new/core/helper/spacing.dart';
import 'package:car_app_new/features/car_feature/home/presention/widgets/custom_bloc_builder_brand.dart';
import 'package:flutter/material.dart';

class SectionBrands extends StatelessWidget {
  const SectionBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CstomTitleSection(title: 'Brands'),
        verticalSpace(12),

        const CustomBlocBuilderBrand(),
      ],
    );
  }
}
