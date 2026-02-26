import 'package:car_app_new/core/app/theme/my_colors.dart';
import 'package:car_app_new/core/common/widgets/custom_image.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/styles/app_images.dart';
import 'package:flutter/material.dart';

class BookNowButton extends StatelessWidget {
  const BookNowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: context.colors.button,
          minimumSize: const Size(double.infinity, 61),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: () {},
        child: Row(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Book Now',
              style: context.textStyle.copyWith(
                color: context.colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),

            const CustomImage(
              width: 16,
              height: 12,
              imageType: ImagesType.svg,
              imagePath: AppImages.arrowRightIcon,
            ),
          ],
        ),
      ),
    );
  }
}