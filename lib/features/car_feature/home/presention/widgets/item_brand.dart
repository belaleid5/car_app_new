import 'package:car_app_new/core/common/model/brand_model.dart';
import 'package:car_app_new/core/common/widgets/custom_image.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

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
          padding: const EdgeInsets.only(
            top: 8,
            bottom: 8,
            right: 12,
          ),
          child: CircleAvatar(
            backgroundColor: context.color.black,

            child: CustomImage(
              width: 60,
              height: 60,
              boxFit: BoxFit.cover,
              imageType: ImagesType.networkSvg,
              imagePath: brand.image,
            ),
          ),
        ),
        Text(
          brand.name,
          style: context.textStyle.copyWith(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
