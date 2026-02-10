import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class FavoriteIconHome extends StatefulWidget {
  const FavoriteIconHome({
    super.key,
    required this.onFavoriteTap,
  });

  final VoidCallback? onFavoriteTap;

  @override
  State<FavoriteIconHome> createState() => _FavoriteIconHomeState();
}

class _FavoriteIconHomeState extends State<FavoriteIconHome> {
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
        child: CircleAvatar(
          backgroundColor: context.color.white,
          radius: 8,
          child: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            color: isFavorite ? Colors.red : context.color.icon,
            size: 12,
          ),
        ),
      ),
    );
  }
}
