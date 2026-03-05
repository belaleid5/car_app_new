import 'package:car_app_new/core/common/widgets/custom_image.dart';
import 'package:car_app_new/core/common/widgets/favorite_icon.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class CarImage extends StatelessWidget {
  const CarImage({
    required this.image, super.key,
    this.onFavoriteTap,
  });

  final String image;
  final VoidCallback? onFavoriteTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        color: context.color.stroke, 
      ),
      child: Stack(
        children: [
          CustomImage(
            imageType: ImagesType.networkSvg,
            imagePath: image,
            height: 100,

            width: 200,
            boxFit: BoxFit.contain,
            borderRadius: 16,
          ),

          CustomFavoriteIcon(
            padding: 4,
            height: 12,
            onFavoriteTap: onFavoriteTap,
          ),
        ],
      ),
    );
  }
}
