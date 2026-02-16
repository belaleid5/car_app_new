import 'package:car_app_new/features/user/home/presention/manger/bloc_brands/brands_bloc.dart';
import 'package:car_app_new/features/user/home/presention/manger/bloc_brands/brands_state.dart';
import 'package:car_app_new/features/user/home/presention/widgets/custom_list_brand_content.dart';
import 'package:car_app_new/features/user/home/presention/widgets/custom_load_faild_widget.dart';
import 'package:car_app_new/features/user/home/presention/widgets/custom_shimmer_brand_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBlocBuilderBrand extends StatelessWidget {
  const CustomBlocBuilderBrand({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BrandsBloc, BrandsState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox(),

          loading: CustomShimmerBrandsList.new,

          error: (message) => const CustomFailedLoadWidget(),

          loaded: (brands) {
            final brandsList = brands.expand((e) => e.data).toList();

            return CustomListBrandContent(brandsList: brandsList);
          },
        );
      },
    );
  }
}
