import 'package:car_app_new/core/common/widgets/custom_image.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/features/car/home/presention/widgets/favorite_icon_home.dart';
import 'package:flutter/material.dart';

class CarImage extends StatelessWidget {
  const  CarImage({
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
        color: context.color.stroke,
      ),

      child: Stack(
        children: [
          CustomImage(
            imageType: ImagesType.network,
            imagePath: image,
            height: 100,
            width: double.infinity,
            boxFit: BoxFit.contain,
            borderRadius: 16,
          ),

          FavoriteIconHome(onFavoriteTap: onFavoriteTap),
        ],
      ),
    );
  }
}
