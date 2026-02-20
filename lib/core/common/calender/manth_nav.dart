import 'package:flutter/material.dart';

class MonthNavigator extends StatelessWidget {
  final String label;
  final VoidCallback onPrevious;
  final VoidCallback onNext;

  const MonthNavigator({
    super.key,
    required this.label,
    required this.onPrevious,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(Icons.chevron_left, size: 22),
          onPressed: onPrevious,
          splashRadius: 18,
        ),
        Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
        ),
        IconButton(
          icon: const Icon(Icons.chevron_right, size: 22),
          onPressed: onNext,
          splashRadius: 18,
        ),
      ],
    );
  }
}