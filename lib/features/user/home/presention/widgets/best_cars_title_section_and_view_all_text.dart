import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class BestCarsTitleSectionAndViewAllText extends StatelessWidget {
  const BestCarsTitleSectionAndViewAllText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Best Cars',
            style: context.textStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),

          Text(
            'View All',
            style: context.textStyle.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: context.color.textSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
