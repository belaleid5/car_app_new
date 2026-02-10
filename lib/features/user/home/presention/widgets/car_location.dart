import 'package:car_app_new/core/common/widgets/custom_image.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/styles/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarLocation extends StatelessWidget {
  const CarLocation({super.key, required this.address});
  final String? address;

  @override
  Widget build(BuildContext context) {
    if (address == null || address!.isEmpty) {
      return const SizedBox.shrink();
    }

    return Row(
      children: [
         CustomImage(
          imageType: ImagesType.svg,
          imagePath: AppImages.locationIcon,
          height: 16.h,
          width: 16.w,
          applySvgColor: true,
          color: Colors.grey,
        ),

        SizedBox(width: 4.w),
        Flexible(
          child: Text(
            address!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: context.textStyle.copyWith(
              fontSize: 13.sp,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
