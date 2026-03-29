import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class BudgetTag extends StatelessWidget {
  const BudgetTag({required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.textStyle.copyWith(
            fontSize: 13,
            color: context.color.textSecondary,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: 140,
          height: 48,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: context.color.secondary,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Text(
            value,
            style: context.textStyle.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: context.color.primary,
            ),
          ),
        ),
      ],
    );
  }
}