import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/extensions/custom_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconShimmerWidget extends StatelessWidget {
  const IconShimmerWidget({
    super.key, required this.iconColor,
  });
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return ShimmerWidget.circular(
      baseColor: iconColor,
      highlightColor: context.color.white,
      size: 18.w,
    );
  }
}
