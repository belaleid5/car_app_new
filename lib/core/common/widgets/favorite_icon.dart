import 'package:car_app_new/core/common/widgets/custom_circular_icon.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/styles/app_images.dart';
import 'package:flutter/material.dart';

class CustomFavoriteIcon extends StatefulWidget {
  const CustomFavoriteIcon({
    super.key,
    this.onFavoriteTap,
    this.height,
    this.padding,
  });

  final VoidCallback? onFavoriteTap;
  final double? height;
  final double? padding;

  @override
  State<CustomFavoriteIcon> createState() => _CustomFavoriteIconState();
}

class _CustomFavoriteIconState extends State<CustomFavoriteIcon> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 8,
      right: 8,
      child: GestureDetector(
        onTap: () {
          setState(() {
            isFavorite = !isFavorite;
          });
          widget.onFavoriteTap?.call();
        },
        child: CustomCircularIcon(
          height: widget.height,
          colors: isFavorite ? Colors.transparent : context.color.stroke,
          iconPath: isFavorite ? AppImages.favoriteIconFilled : 
          AppImages.favoriteIcon,
          padding: widget.padding,
        ),
      ),
    );
  }
}
