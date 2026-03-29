import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class FotterFilterBottomSheet extends StatelessWidget {
  const FotterFilterBottomSheet({
    super.key,
    required this.onApply,
    required this.onClear,
  });

  final VoidCallback onApply;
  final VoidCallback onClear;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: onClear,
            child: Text(
              'Clear All',
              style: context.textStyle.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: context.color.black,
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: context.color.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 12,
              ),
            ),
            onPressed: onApply,
            child: Text(
              'Show 100+ Cars',
              style: context.textStyle.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: context.color.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}