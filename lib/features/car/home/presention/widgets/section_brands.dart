import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/helper/spacing.dart';
import 'package:car_app_new/features/car/home/presention/widgets/custom_bloc_builder_brand.dart';
import 'package:flutter/material.dart';

class SectionBrands extends StatelessWidget {
  const SectionBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Brands',
          style: context.textStyle.copyWith(
            fontSize: 16,
          ),
        ),
        verticalSpace(12),

        const CustomBlocBuilderBrand(),
      ],
    );
  }
}
