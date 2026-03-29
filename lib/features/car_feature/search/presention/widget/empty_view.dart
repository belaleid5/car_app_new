import 'package:animate_do/animate_do.dart';
import 'package:car_app_new/core/common/widgets/custom_image.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/styles/app_images.dart';
import 'package:flutter/material.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({super.key, });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const CustomImage(
            height: 200,
            width: 200,
            imageType: ImagesType.asset,
            imagePath: AppImages.emptyImage,
          ).fadeInLeft(),

          Text(
            'No results found',
            style: context.textStyle.copyWith(fontSize: 22),
          ).fadeInRightBig(),
        ],
      ),
    );
  }
}