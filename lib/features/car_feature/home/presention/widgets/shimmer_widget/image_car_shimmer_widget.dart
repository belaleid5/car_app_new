import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/extensions/custom_shimmer.dart';
import 'package:car_app_new/features/car_feature/home/presention/widgets/shimmer_widget/icon_shimmer_widget.dart';
import 'package:flutter/material.dart';

class ImageCarWidgetShimmer extends StatelessWidget {
  const ImageCarWidgetShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadiusGeometry.only(
            topLeft: Radius.circular(18),
            topRight: Radius.circular(18),
          ),
          child: ShimmerWidget.card(
            baseColor: context.color.stroke,
            highlightColor: context.color.white,
            height: 100,
          ),
        ),
        Positioned(
          top: 8,
          right: 8,
          child: IconShimmerWidget(
            iconColor: context.color.primary,
          ),
        ),
      ],
    );
  }
}
