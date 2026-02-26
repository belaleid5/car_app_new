import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/extensions/custom_shimmer.dart';
import 'package:flutter/material.dart';

class TextShimmerWidget extends StatelessWidget {
  const TextShimmerWidget({
    super.key, this.titleColor,
    this.width,
    this.height,
  });
  final Color  ? titleColor;
  final double ? width;
  final double ? height;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ShimmerWidget.text(
        baseColor:titleColor?? context.color.primary,
        highlightColor: context.color.white,
        width: width?? 45,
        height: height?? 6,
      ),
    );
  }
}
