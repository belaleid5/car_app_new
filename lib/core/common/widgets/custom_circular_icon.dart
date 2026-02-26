import 'package:car_app_new/core/common/widgets/custom_image.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class CustomCircularIcon extends StatelessWidget {
  const CustomCircularIcon({
    super.key,
    required this.iconPath,
    this.padding,
    this.colors,
    this.height,
  });

  final String iconPath;
  final double? padding;
  final Color? colors;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding ?? 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: context.color.white,
        border: Border.all(color: context.color.stroke),
      ),
      child: CustomImage(
        height: height,
        color: colors,
        imageType: ImagesType.svg,
        imagePath: iconPath,
      ),
    );
  }
}
