import 'package:car_app_new/core/app/theme/my_colors.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/features/car_feature/details/data/models/car_details_model.dart';
import 'package:car_app_new/features/car_feature/home/presention/widgets/car-ratig.dart';
import 'package:flutter/widgets.dart';

class RatingAndReview extends StatelessWidget {
  const RatingAndReview({
    super.key,
    required this.car,
  });

  final CarDetailsModel car;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 18,
          ),
          child: CarRating(rate: car.reviewsAvg),
        ),
        Text(
          '(${car.reviewsCount}+ reviews)',
          style: context.textStyle.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: context.colors.textSecondary,
          ),
        ),
      ],
    );
  }
}
