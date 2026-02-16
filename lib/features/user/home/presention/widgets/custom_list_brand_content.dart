import 'package:car_app_new/core/common/widgets/list_view.dart';
import 'package:car_app_new/features/user/home/data/models/brand_model.dart';
import 'package:car_app_new/features/user/home/presention/widgets/item_brand.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListBrandContent extends StatelessWidget {
  const CustomListBrandContent({
    super.key,
    required this.brandsList,
  });

  final List<BrandModel> brandsList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.h,
      child: PaginatedListView<BrandModel>(
        scrollDirection: Axis.horizontal,
        itemCount: brandsList.length,
        hasMore: false,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        itemBuilder: (context, index) {
          final brand = brandsList[index];
          return Padding(
            padding: EdgeInsets.only(right: 12.w),
            child: ItemBrand(brand: brand),
          );
        },
      ),
    );
  }
}
