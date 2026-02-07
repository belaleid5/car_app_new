import 'package:car_app_new/core/common/widgets/custom_image.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class CarImage extends StatelessWidget {
  const CarImage({
    super.key,
    required this.image,
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
        color: context.color.background,
      ),

      child: Stack(
        children: [
          CustomImage(
            imageType: ImagesType.network,
            imagePath: image,
            height: 120,
            width: double.infinity,
            boxFit: BoxFit.contain,
            borderRadius: 16,
          ),

          Positioned(
            top: 8,
            right: 8,
            child: GestureDetector(
              onTap: onFavoriteTap,
              child: CircleAvatar(
                backgroundColor: context.color.white,
                radius: 14,
                child: Icon(
                  Icons.favorite_border,
                  color: context.color.icon,
                  size: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
