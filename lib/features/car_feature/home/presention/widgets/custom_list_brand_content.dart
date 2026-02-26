import 'package:car_app_new/core/common/widgets/list_view.dart';
import 'package:car_app_new/core/common/model/brand_model.dart';
import 'package:car_app_new/features/car_feature/home/presention/widgets/item_brand.dart';
import 'package:flutter/material.dart';

class CustomListBrandContent extends StatelessWidget {
  const CustomListBrandContent({
    super.key,
    required this.brandsList,
  });

  final List<BrandModel> brandsList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: PaginatedListView<BrandModel>(
        scrollDirection: Axis.horizontal,
        itemCount: brandsList.length,
        hasMore: false,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemBuilder: (context, index) {
          final brand = brandsList[index];
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: ItemBrand(brand: brand),
          );
        },
      ),
    );
  }
}
