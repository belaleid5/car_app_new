import 'package:car_app_new/core/app/theme/my_colors.dart';
import 'package:car_app_new/features/car_feature/home/presention/widgets/shimmer_widget/rate_widget_shimmer.dart';
import 'package:car_app_new/features/car_feature/home/presention/widgets/shimmer_widget/text_shimmer_widget.dart';
import 'package:flutter/material.dart';

class ShimmerContentCar extends StatelessWidget {
  const ShimmerContentCar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            spacing: 8,

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
              const TextShimmerWidget(
                width: 100,
                height: 7,
              ),
              TextShimmerWidget(
                titleColor: context.colors.stroke,
                width: 250,
                height: 7,
              ),
            ],
          ),

          Column(
            spacing: 8,
            children: [
              const RateWidgetShimmer(),
              TextShimmerWidget(
                titleColor: context.colors.stroke,
                width: 100,
                height: 7,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
