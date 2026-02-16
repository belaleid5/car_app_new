import 'package:car_app_new/core/common/widgets/list_view.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/extensions/custom_shimmer.dart';
import 'package:car_app_new/features/user/home/data/models/brand_model.dart';
import 'package:flutter/material.dart';

class CustomShimmerBrandsList extends StatelessWidget {
  const CustomShimmerBrandsList({
    super.key, 
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: PaginatedListView<BrandModel>(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        hasMore: false,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  bottom: 8,
                  right: 12,
                ),
                child: ShimmerWidget.circular(
                  baseColor: context.color.primary.withOpacity(0.95),
                  highlightColor: context.color.shades,
                  size: 60,
                ),
              ),
              ShimmerWidget.rectangular(
                baseColor: context.color.primary.withOpacity(0.95),
                highlightColor: context.color.shades,
                borderRadius: BorderRadius.circular(8),
                width: 60,
                height: 14,
              ),
            ],
          );
        },
      ),
    );
  }
}
