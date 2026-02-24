import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class TitleSectionAndViewAllText extends StatelessWidget {
  const TitleSectionAndViewAllText({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
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
