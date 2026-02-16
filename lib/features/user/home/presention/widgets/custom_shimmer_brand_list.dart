import 'package:car_app_new/core/common/widgets/list_view.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/extensions/custom_shimmer.dart';
import 'package:car_app_new/features/user/home/data/models/brand_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomShimmerBrandsList extends StatelessWidget {
  const CustomShimmerBrandsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.h,
      child: PaginatedListView<BrandModel>(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        hasMore: false,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 8.sp,
                  bottom: 8.sp,
                  right: 12.sp,
                ),
                child: ShimmerWidget.circular(
                  baseColor: context.color.primary.withOpacity(0.95),
                  highlightColor: context.color.shades,
                  size: 80.w,
                ),
              ),
              ShimmerWidget.rectangular(
                baseColor: context.color.primary.withOpacity(0.95),
                highlightColor: context.color.shades,
                borderRadius: BorderRadius.circular(8.r),
                width: 60.w,
                height: 14.h,
              ),
            ],
          );
        },
      ),
    );
  }
}
