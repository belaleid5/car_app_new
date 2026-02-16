import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/features/user/home/presention/widgets/shimmer_widget/icon_shimmer_widget.dart';
import 'package:car_app_new/features/user/home/presention/widgets/shimmer_widget/text_shimmer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RateWidgtetShimmer extends StatelessWidget {
  const RateWidgtetShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5.w,
      children: [
        const TextShimmerWidget(),
        IconShimmerWidget(
          iconColor: context.color.rate,
        ),
      ],
    );
  }
}