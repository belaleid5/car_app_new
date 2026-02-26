import 'package:car_app_new/core/common/model/car_review_model.dart';
import 'package:car_app_new/core/common/widgets/smooth_list_view.dart';
import 'package:car_app_new/features/car_feature/details/presention/widgets/review_card.dart';
import 'package:flutter/material.dart';

class ListCardUserReview extends StatelessWidget {
  const ListCardUserReview({
    super.key,
    required this.reviews,
  });

  final List<ReviewModel> reviews;

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
        itemCount: reviews.length,
        separatorBuilder: (_, __) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          final review = reviews[index];
          return ReviewCard(review: review);
        },
      ),
    );
  }
}