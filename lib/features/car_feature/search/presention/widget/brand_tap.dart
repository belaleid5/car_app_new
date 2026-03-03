import 'package:car_app_new/core/common/model/brand_model.dart';
import 'package:car_app_new/core/common/widgets/custom_image.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BrandTap extends StatelessWidget {
  const BrandTap({
    super.key,
    required this.brand,
    required this.isSelected,
    required this.onTap,
  });

  final BrandModel brand;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOutCubic,
        padding: const EdgeInsets.only(right: 10),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: isSelected ? context.color.primary : Colors.transparent,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: isSelected ? context.color.primary : Colors.transparent,
          ),
        ),
        child: Row(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (brand.image.isNotEmpty)
              CustomImage(
                imageType: brand.id == 0 ? ImagesType.svg : ImagesType.network,
                imagePath: brand.image,
                height: 34,
                width: 34,
                boxFit: BoxFit.cover,
              ),
            Text(
              brand.name,
              style: context.textStyle.copyWith(
                fontSize: 14,
                color: isSelected ? context.color.white : context.color.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}