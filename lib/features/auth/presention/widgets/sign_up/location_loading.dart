import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/styles/theme/my_colors.dart';
import 'package:flutter/material.dart';

class LoadingLocationWidget extends StatelessWidget {
  const LoadingLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: context.colors.stroke),
        borderRadius: BorderRadius.circular(12),
        color: context.colors.background,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              strokeWidth: 2.5,
              valueColor: AlwaysStoppedAnimation(context.colors.primary),
            ),
          ),
          const SizedBox(width: 12),
          Text(
            'Loading...',
            style: TextStyle(
              color: context.color.textSecondary,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
