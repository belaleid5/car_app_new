import 'package:car_app_new/core/common/widgets/custom_image.dart';
import 'package:car_app_new/core/styles/app_images.dart';
import 'package:flutter/material.dart';

class CarLocation extends StatelessWidget {
  const CarLocation({super.key, required this.address});
  final String? address;

  @override
  Widget build(BuildContext context) {
    if (address == null || address!.isEmpty) {
      return const SizedBox.shrink();
    }

    return Row(
      children: [
        const CustomImage(
          imageType: ImagesType.svg,
          imagePath: AppImages.locationIcon,
          height: 16,
          width: 16,
          applySvgColor: true,
          color: Colors.grey,
        ),

        const SizedBox(width: 4),
        Flexible(
          child: Text(
            address!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 13,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
