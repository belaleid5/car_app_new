import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/styles/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionBrands extends StatelessWidget {
  const SectionBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Brands',
          style: context.textStyle.copyWith(
            fontSize: 16.sp,
          ),
        ),

        SizedBox(
          height: 150.h,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 8.sp,
                    bottom: 8.sp,
                    right: 12.sp,
                  ),
                  child: Image.asset(AppImages.brandImage),
                ),
                Text(
                  'Lamborghini',
                  style: context.textStyle.copyWith(
                    fontSize: 12.sp,
                  ),
                ),
              ],
            ),
            separatorBuilder: (context, index) => const Spacer(),
            itemCount: 5,
          ),
        ),
      ],
    );
  }
}
