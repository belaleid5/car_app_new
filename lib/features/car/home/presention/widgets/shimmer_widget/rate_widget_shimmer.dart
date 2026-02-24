import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/features/car/home/presention/widgets/shimmer_widget/icon_shimmer_widget.dart';
import 'package:car_app_new/features/car/home/presention/widgets/shimmer_widget/text_shimmer_widget.dart';
import 'package:flutter/material.dart';

class RateWidgetShimmer extends StatelessWidget {
  const RateWidgetShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        const TextShimmerWidget(),
        IconShimmerWidget(
          iconColor: context.color.rate,
        ),
      ],
    );
  }
}
