import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/features/car/home/presention/widgets/shimmer_widget/icon_shimmer_widget.dart';
import 'package:car_app_new/features/car/home/presention/widgets/shimmer_widget/text_shimmer_widget.dart';
import 'package:flutter/material.dart';

class FotterShimmerWidget extends StatelessWidget {
  const FotterShimmerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        spacing: 2,
        children: [
          IconShimmerWidget(
            iconColor: context.color.stroke,
          ),

          const TextShimmerWidget(),
          const Spacer(),
          IconShimmerWidget(
            iconColor: context.color.stroke,
          ),

          const FittedBox(child: TextShimmerWidget()),
        ],
      ),
    );
  }
}
