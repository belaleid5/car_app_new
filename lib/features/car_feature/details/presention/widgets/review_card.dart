import 'package:car_app_new/core/app/theme/my_colors.dart';
import 'package:car_app_new/core/common/model/car_review_model.dart';
import 'package:car_app_new/core/common/widgets/custom_image.dart';
import 'package:car_app_new/core/common/widgets/name_user.dart';
import 'package:car_app_new/core/styles/app_images.dart';
import 'package:car_app_new/features/car_feature/details/presention/widgets/dec_car.dart';
import 'package:car_app_new/features/car_feature/home/presention/widgets/car-ratig.dart';
import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key, required this.review});

  final ReviewModel review;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        width: 262,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          border: Border.all(color: context.colors.stroke),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          spacing: 7,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              spacing: 8,
              children: [
                ClipOval(
                  child: CustomImage(
      imageType: ImagesType.networkSvg,
                    imagePath: review.userImage,
                    fallbackPath: AppImages.personImage,
                    height: 32,
                    width: 32,
                    boxFit: BoxFit.cover,
                  ),
                ),
                NameUser(name: 'Mr.${review.username}'),

                CarRating(rate: review.rate.toDouble()),
              ],
            ),
            DescriptionTitle(des: review.review),
          ],
        ),
      ),
    );
  }
}

