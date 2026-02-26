import 'package:car_app_new/core/common/widgets/smooth_list_view.dart';
import 'package:car_app_new/features/car_feature/details/presention/widgets/shimmer_details_car/card_review_shimmer.dart';
import 'package:flutter/material.dart';

class ShimmerListCardUserReview extends StatelessWidget {
  const ShimmerListCardUserReview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: SmoothListView.separated(
        duration: const Duration(milliseconds: 300),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 10,
        ),
        itemCount: 2,
        separatorBuilder: (_, __) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          return const ShimmerReviewCard();
        },
      ),
    );
  }
}