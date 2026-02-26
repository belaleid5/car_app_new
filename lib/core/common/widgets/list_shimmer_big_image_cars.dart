import 'package:car_app_new/core/app/theme/my_colors.dart';
import 'package:car_app_new/core/common/widgets/smooth_list_view.dart';
import 'package:car_app_new/core/extensions/custom_shimmer.dart';
import 'package:flutter/material.dart';

class ListShimmerBigImageCars extends StatelessWidget {
  const ListShimmerBigImageCars({super.key, this.height});
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      height: height ?? 130,
      child: SmoothListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (_, __) => ShimmerWidget.rounded(
          width: 390,
          height: height ?? 130,
          highlightColor: context.colors.white,
          radius: 16,
        ),
        duration: const Duration(milliseconds: 300),
      ),
    );
  }
}
