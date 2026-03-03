import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    super.key,
    required this.price,
  });

  final String? price;

  @override
  Widget build(BuildContext context) {
    return Text(
      price != null ? '\$${price!.split('.')[0].substring(0, 3)}/Day' : '',
      style: context.textStyle.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}