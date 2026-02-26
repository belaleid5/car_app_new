import 'package:car_app_new/core/common/widgets/custom_image.dart';
import 'package:car_app_new/core/common/widgets/favorite_icon.dart';
import 'package:flutter/material.dart';

class CarouselItem {
  const CarouselItem({
    required this.imageUrl,
    this.onTap,
  });

  final String imageUrl;

  final VoidCallback? onTap;
}

class CarouselCard extends StatelessWidget {
  const CarouselCard({super.key, required this.item});
  final CarouselItem item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: item.onTap,
      child: Stack(
      
        fit: StackFit.expand,
        children: [
          CustomImage(
            imageType: ImagesType.network,
            boxFit: BoxFit.contain,
            imagePath: item.imageUrl,
          ),

          CustomFavoriteIcon(
            padding: 8,
            height: 16,
            onFavoriteTap: () {},
          ),
        ],
      ),
    );
  }
}
