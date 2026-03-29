import 'package:car_app_new/core/common/widgets/custom_image.dart';
import 'package:car_app_new/core/styles/app_images.dart';
import 'package:flutter/material.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CustomImage(
          imageType: ImagesType.asset,
          imagePath: AppImages.emptyImage,
        ),
      ),
    );
  }
}
