import 'package:car_app_new/core/common/widgets/custom_image.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/features/user/home/data/models/brand_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemBrand extends StatelessWidget {
  const ItemBrand({
    super.key,
    required this.brand,
  });

  final BrandModel brand;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 8.sp,
            bottom: 8.sp,
            right: 12.sp,
          ),
          child: CustomImage(
            width: 80.w,
            height: 80.h,
            boxFit: BoxFit.contain,
            imageType: ImagesType.network,
            imagePath: brand.image,
          ),
        ),
        Text(
          brand.name,
          style: context.textStyle.copyWith(
            fontSize: 12.sp,
          ),
        ),
      ],
    );
  }
}
