import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/extensions/custom_shimmer.dart';
import 'package:car_app_new/features/user/home/presention/widgets/shimmer_widget/icon_shimmer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageCarWidgetShimmer extends StatelessWidget {
  const ImageCarWidgetShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.only(topLeft: Radius.circular(18.r),topRight: Radius.circular(18.r)),
          child: ShimmerWidget.card(
            baseColor: context.color.stroke,
            highlightColor: context.color.white,
            height: 100.h,
          
          ),
        ),
        Positioned(top: 8.h, right: 8.w, child: 
         IconShimmerWidget(iconColor: context.color.primary,)),
      ],
    );
  }
}