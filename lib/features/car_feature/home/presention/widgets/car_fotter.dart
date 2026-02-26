import 'package:car_app_new/core/common/widgets/custom_image.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/helper/spacing.dart';
import 'package:car_app_new/core/styles/app_images.dart';
import 'package:flutter/material.dart';

class CarFooter extends StatelessWidget {
  const CarFooter({
    super.key,
    required this.seats,
    required this.price,
  });
  final String seats;
  final String? price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CustomImage(
              imageType: ImagesType.svg,
              imagePath: AppImages.setsIcon,
              height: 16,
              width: 16,
              applySvgColor: true,
              color: context.color.stroke,
            ),
             horizontalSpace(4),
            Text(
              '$seats ',
              style: context.textStyle.copyWith(
                fontSize: 12,
              ),
            ),
          ],
        ),
        const CustomImage(
          imageType: ImagesType.svg,
          imagePath: AppImages.dollarIcon,
          height: 16,
          width: 16,
        ),
        Text(
          price != null ? '\$${int.parse(price!.split('.')[0])}/Day' : '',
          style: context.textStyle.copyWith(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
