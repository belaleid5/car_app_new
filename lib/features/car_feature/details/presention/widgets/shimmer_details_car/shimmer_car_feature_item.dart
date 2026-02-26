import 'package:car_app_new/core/app/theme/my_colors.dart';
import 'package:car_app_new/core/extensions/custom_shimmer.dart';
import 'package:car_app_new/core/helper/spacing.dart';
import 'package:flutter/material.dart';

class ShimmerCarFeatureItem extends StatelessWidget {
  const ShimmerCarFeatureItem({
    super.key,
 

  });


  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 10, bottom: 10),
      decoration: BoxDecoration(
        color: context.colors.stroke,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ShimmerWidget.circular(
            size: 30,
            baseColor: context.colors.primary.withOpacity(0.5),
            highlightColor: context.colors.white,
          ),

          verticalSpace(16),

          ShimmerWidget.text(
            height: 5,
            width: 50,
            baseColor: context.colors.primary.withOpacity(0.5),
            highlightColor: context.colors.white,
          ),
          
          ShimmerWidget.text(
            height: 5,
            width: 50,
            baseColor: context.colors.button,
            highlightColor: context.colors.white,
          ),
        ]
      ),
    );
  }
}
