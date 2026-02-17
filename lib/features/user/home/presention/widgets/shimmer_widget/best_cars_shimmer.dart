import 'package:car_app_new/core/common/widgets/smooth_list_view.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/helper/spacing.dart';
import 'package:car_app_new/features/user/home/presention/widgets/shimmer_widget/fotter_widget_shimmer.dart';
import 'package:car_app_new/features/user/home/presention/widgets/shimmer_widget/image_car_shimmer_widget.dart';
import 'package:car_app_new/features/user/home/presention/widgets/shimmer_widget/location_widget_shimmer.dart';
import 'package:car_app_new/features/user/home/presention/widgets/shimmer_widget/rate_widget_shimmer.dart';
import 'package:car_app_new/features/user/home/presention/widgets/shimmer_widget/text_shimmer_widget.dart';
import 'package:flutter/material.dart';

class BestCarsShimmer extends StatelessWidget {
  const BestCarsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SizedBox(
        height: 250,

        child: SmoothListView.builder(
          scrollDirection: Axis.horizontal,
          duration: const Duration(milliseconds: 300),
          itemCount: 5,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: context.color.black.withValues(alpha: 0.2),
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ImageCarWidgetShimmer(),

                    verticalSpace(10),

                    const TextShimmerWidget(),

                    verticalSpace(5),
                    const RateWidgetShimmer(),

                    verticalSpace(8),
                    const LocationShimmerWidget(),

                    verticalSpace(8),
                    const FotterShimmerWidget(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
