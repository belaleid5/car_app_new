import 'package:flutter/material.dart';

class CarRating extends StatelessWidget {
  const CarRating({super.key, required this.rate});
  final double rate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          rate.toStringAsFixed(1),
          style: const TextStyle(fontSize: 13),
        ),

        const SizedBox(width: 4),
        const Icon(Icons.star, size: 16, color: Colors.amber),
      ],
    );
  }
}
