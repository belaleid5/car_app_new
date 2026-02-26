
import 'package:car_app_new/core/app/theme/my_colors.dart';
import 'package:car_app_new/core/common/widgets/custom_circular_icon.dart';
import 'package:car_app_new/core/common/widgets/custom_image.dart';
import 'package:car_app_new/core/extensions/custom_shimmer.dart';
import 'package:car_app_new/core/styles/app_images.dart';
import 'package:flutter/material.dart';

class ShimmerInformationOwner extends StatelessWidget {
  const ShimmerInformationOwner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Row(
        spacing: 8,
        children: [
          ShimmerWidget.circular(
            size: 32,
          ),
          ShimmerWidget.text(
            height: 5,
            width: 50,
            baseColor: context.colors.primary,
            highlightColor: context.colors.white,
          ),
          const CustomImage(
            imageType: ImagesType.svg,
            imagePath: AppImages.verifyUserIcon,
            height: 16,
            width: 16,
          ),
          const Spacer(),
          const CustomCircularIcon(iconPath: AppImages.callIcon),
      
          const CustomCircularIcon(iconPath: AppImages.messageIcon),
        ],
      ),
    );
  }
}